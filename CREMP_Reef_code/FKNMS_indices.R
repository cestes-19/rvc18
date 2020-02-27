
library(rio)
library("magrittr")
library(knitr)
library(tidyverse)
library(rvc)
library(vegan)
library(dygraphs)
library(grDevices)
library(RColorBrewer)
library(plyr)

### FKNMS IEA indices 

## 1. Simpson Diversity by subregion (UK, LK, MK, DT, SEF)

# Add in protected status from RVC data to subregion data 

#setwd("C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv")


####For protected status but it is making duplicates so this is on back burner


# RVCdata_DT_rds = 'RVCdata_DT.rds'
# #rvc94_16_csv = 'big_csv/rvc94_16.csv'
# if (!all(file.exists(RVCdata_DT_rds))){
#   RVCdata_DT <- getRvcData(1999:2018, "DRY TORT")
#   write_rds(RVCdata_DT, 'RVCdata_DT.rds')
# } else{ #read data
#   RVCdata_DT = read_rds('RVCdata_DT.rds')}
# 
# 
# RVCdata_DT = read_rds('RVCdata_DT.rds')
# 
# RVCdata_DT_sample <- RVCdata_DT$sample_data
# 
# RVCdata_DT_sample <- select(RVCdata_DT_sample, PROT, SPECIES_CD)
# 
# RVCdata_DT_merge <- distinct(RVCdata_DT_sample)

# Load in subregion data (cut in Arcgis for the Keys)

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/DT/biomass")

DT_1999_merge <- read_csv("bioDT1999_2.csv")
DT_1999_merge <- data.frame(DT_1999_merge)


DT_1999_abun <- count(DT_1999_merge, vars = "SPECIES_CD")
DT_1999_abun$YEAR <- "1999"



DT_1999_test = DT_1999_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_1999_test$data <- NULL
DT_1999_test$data_wide <- NULL


DT_1999_diversity <- DT_1999_test

#export(DT_1999_diversity, "diversity/DT_1999_diversity.csv")


DT_2000_merge <- read_csv("bioDT2000_2.csv")
DT_2000_merge <- data.frame(DT_2000_merge)


DT_2000_abun <- count(DT_2000_merge, vars = "SPECIES_CD")
DT_2000_abun$YEAR <- "2000"



DT_2000_test = DT_2000_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_2000_test$data <- NULL
DT_2000_test$data_wide <- NULL


DT_2000_diversity <- DT_2000_test

#export(DT_2000_diversity, "diversity/DT_2000_diversity.csv")


DT_2004_merge <- read_csv("bioDT2004_2.csv")
DT_2004_merge <- data.frame(DT_2004_merge)


DT_2004_abun <- count(DT_2004_merge, vars = "SPECIES_CD")
DT_2004_abun$YEAR <- "2004"



DT_2004_test = DT_2004_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_2004_test$data <- NULL
DT_2004_test$data_wide <- NULL


DT_2004_diversity <- DT_2004_test

#export(DT_2004_diversity, "diversity/DT_2004_diversity.csv")



DT_2006_merge <- read_csv("bioDT2006_2.csv")
DT_2006_merge <- data.frame(DT_2006_merge)


DT_2006_abun <- count(DT_2006_merge, vars = "SPECIES_CD")
DT_2006_abun$YEAR <- "2006"



DT_2006_test = DT_2006_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_2006_test$data <- NULL
DT_2006_test$data_wide <- NULL


DT_2006_diversity <- DT_2006_test

#export(DT_2006_diversity, "diversity/DT_2006_diversity.csv")


DT_2008_merge <- read_csv("bioDT2008_2.csv")
DT_2008_merge <- data.frame(DT_2008_merge)


DT_2008_abun <- count(DT_2008_merge, vars = "SPECIES_CD")
DT_2008_abun$YEAR <- "2008"



DT_2008_test = DT_2008_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_2008_test$data <- NULL
DT_2008_test$data_wide <- NULL


DT_2008_diversity <- DT_2008_test

#export(DT_2008_diversity, "diversity/DT_2008_diversity.csv")


DT_2010_merge <- read_csv("bioDT2010_2.csv")
DT_2010_merge <- data.frame(DT_2010_merge)


DT_2010_abun <- count(DT_2010_merge, vars = "SPECIES_CD")
DT_2010_abun$YEAR <- "2010"



DT_2010_test = DT_2010_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_2010_test$data <- NULL
DT_2010_test$data_wide <- NULL


DT_2010_diversity <- DT_2010_test

#export(DT_2010_diversity, "diversity/DT_2010_diversity.csv")


DT_2012_merge <- read_csv("bioDT2012_2.csv")
DT_2012_merge <- data.frame(DT_2012_merge)


DT_2012_abun <- count(DT_2012_merge, vars = "SPECIES_CD")
DT_2012_abun$YEAR <- "2012"



DT_2012_test = DT_2012_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_2012_test$data <- NULL
DT_2012_test$data_wide <- NULL


DT_2012_diversity <- DT_2012_test

#export(DT_2012_diversity, "diversity/DT_2012_diversity.csv")


DT_2014_merge <- read_csv("bioDT2014_2.csv")
DT_2014_merge <- data.frame(DT_2014_merge)


DT_2014_abun <- count(DT_2014_merge, vars = "SPECIES_CD")
DT_2014_abun$YEAR <- "2014"



DT_2014_test = DT_2014_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_2014_test$data <- NULL
DT_2014_test$data_wide <- NULL


DT_2014_diversity <- DT_2014_test

#export(DT_2014_diversity, "diversity/DT_2014_diversity.csv")


DT_2016_merge <- read_csv("bioDT2016_2.csv")
DT_2016_merge <- data.frame(DT_2016_merge)


DT_2016_abun <- count(DT_2016_merge, vars = "SPECIES_CD")
DT_2016_abun$YEAR <- "2016"



DT_2016_test = DT_2016_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



DT_2016_test$data <- NULL
DT_2016_test$data_wide <- NULL


DT_2016_diversity <- DT_2016_test

#export(DT_2016_diversity, "diversity/DT_2016_diversity.csv")

### Combine all together
DT_diversity <- rbind(DT_1999_diversity, DT_2000_diversity,DT_2004_diversity,DT_2006_diversity,DT_2008_diversity,DT_2010_diversity,DT_2012_diversity,DT_2014_diversity,DT_2016_diversity)

export(DT_diversity,"diversity/All_DT_Diversity.csv")





### Lower Keys 

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/LK/biomass")

LK_1999_merge <- read_csv("bioLK1999_2.csv")
LK_1999_merge <- data.frame(LK_1999_merge)


LK_1999_abun <- count(LK_1999_merge, vars = "SPECIES_CD")
LK_1999_abun$YEAR <- "1999"



LK_1999_test = LK_1999_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_1999_test$data <- NULL
LK_1999_test$data_wide <- NULL


LK_1999_diversity <- LK_1999_test



LK_2000_merge <- read_csv("bioLK2000_2.csv")
LK_2000_merge <- data.frame(LK_2000_merge)


LK_2000_abun <- count(LK_2000_merge, vars = "SPECIES_CD")
LK_2000_abun$YEAR <- "2000"



LK_2000_test = LK_2000_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2000_test$data <- NULL
LK_2000_test$data_wide <- NULL


LK_2000_diversity <- LK_2000_test


LK_2001_merge <- read_csv("bioLK2001_2.csv")
LK_2001_merge <- data.frame(LK_2001_merge)


LK_2001_abun <- count(LK_2001_merge, vars = "SPECIES_CD")
LK_2001_abun$YEAR <- "2001"



LK_2001_test = LK_2001_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2001_test$data <- NULL
LK_2001_test$data_wide <- NULL


LK_2001_diversity <- LK_2001_test


LK_2002_merge <- read_csv("bioLK2002_2.csv")
LK_2002_merge <- data.frame(LK_2002_merge)


LK_2002_abun <- count(LK_2002_merge, vars = "SPECIES_CD")
LK_2002_abun$YEAR <- "2002"



LK_2002_test = LK_2002_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2002_test$data <- NULL
LK_2002_test$data_wide <- NULL


LK_2002_diversity <- LK_2002_test


LK_2003_merge <- read_csv("bioLK2003_2.csv")
LK_2003_merge <- data.frame(LK_2003_merge)


LK_2003_abun <- count(LK_2003_merge, vars = "SPECIES_CD")
LK_2003_abun$YEAR <- "2003"



LK_2003_test = LK_2003_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2003_test$data <- NULL
LK_2003_test$data_wide <- NULL


LK_2003_diversity <- LK_2003_test


LK_2004_merge <- read_csv("bioLK2004_2.csv")
LK_2004_merge <- data.frame(LK_2004_merge)


LK_2004_abun <- count(LK_2004_merge, vars = "SPECIES_CD")
LK_2004_abun$YEAR <- "2004"



LK_2004_test = LK_2004_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2004_test$data <- NULL
LK_2004_test$data_wide <- NULL


LK_2004_diversity <- LK_2004_test


LK_2005_merge <- read_csv("bioLK2005_2.csv")
LK_2005_merge <- data.frame(LK_2005_merge)


LK_2005_abun <- count(LK_2005_merge, vars = "SPECIES_CD")
LK_2005_abun$YEAR <- "2005"



LK_2005_test = LK_2005_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2005_test$data <- NULL
LK_2005_test$data_wide <- NULL


LK_2005_diversity <- LK_2005_test


LK_2006_merge <- read_csv("bioLK2006_2.csv")
LK_2006_merge <- data.frame(LK_2006_merge)


LK_2006_abun <- count(LK_2006_merge, vars = "SPECIES_CD")
LK_2006_abun$YEAR <- "2006"



LK_2006_test = LK_2006_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2006_test$data <- NULL
LK_2006_test$data_wide <- NULL


LK_2006_diversity <- LK_2006_test


LK_2007_merge <- read_csv("bioLK2007_2.csv")
LK_2007_merge <- data.frame(LK_2007_merge)


LK_2007_abun <- count(LK_2007_merge, vars = "SPECIES_CD")
LK_2007_abun$YEAR <- "2007"



LK_2007_test = LK_2007_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2007_test$data <- NULL
LK_2007_test$data_wide <- NULL


LK_2007_diversity <- LK_2007_test


LK_2008_merge <- read_csv("bioLK2008_2.csv")
LK_2008_merge <- data.frame(LK_2008_merge)


LK_2008_abun <- count(LK_2008_merge, vars = "SPECIES_CD")
LK_2008_abun$YEAR <- "2008"



LK_2008_test = LK_2008_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2008_test$data <- NULL
LK_2008_test$data_wide <- NULL


LK_2008_diversity <- LK_2008_test


LK_2009_merge <- read_csv("bioLK2009_2.csv")
LK_2009_merge <- data.frame(LK_2009_merge)


LK_2009_abun <- count(LK_2009_merge, vars = "SPECIES_CD")
LK_2009_abun$YEAR <- "2009"



LK_2009_test = LK_2009_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2009_test$data <- NULL
LK_2009_test$data_wide <- NULL


LK_2009_diversity <- LK_2009_test


LK_2010_merge <- read_csv("bioLK2010_2.csv")
LK_2010_merge <- data.frame(LK_2010_merge)


LK_2010_abun <- count(LK_2010_merge, vars = "SPECIES_CD")
LK_2010_abun$YEAR <- "2010"



LK_2010_test = LK_2010_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2010_test$data <- NULL
LK_2010_test$data_wide <- NULL


LK_2010_diversity <- LK_2010_test


LK_2011_merge <- read_csv("bioLK2011_2.csv")
LK_2011_merge <- data.frame(LK_2011_merge)


LK_2011_abun <- count(LK_2011_merge, vars = "SPECIES_CD")
LK_2011_abun$YEAR <- "2011"



LK_2011_test = LK_2011_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2011_test$data <- NULL
LK_2011_test$data_wide <- NULL


LK_2011_diversity <- LK_2011_test



LK_2012_merge <- read_csv("bioLK2012_2.csv")
LK_2012_merge <- data.frame(LK_2012_merge)


LK_2012_abun <- count(LK_2012_merge, vars = "SPECIES_CD")
LK_2012_abun$YEAR <- "2012"



LK_2012_test = LK_2012_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2012_test$data <- NULL
LK_2012_test$data_wide <- NULL


LK_2012_diversity <- LK_2012_test


LK_2014_merge <- read_csv("bioLK2014_2.csv")
LK_2014_merge <- data.frame(LK_2014_merge)


LK_2014_abun <- count(LK_2014_merge, vars = "SPECIES_CD")
LK_2014_abun$YEAR <- "2014"



LK_2014_test = LK_2014_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2014_test$data <- NULL
LK_2014_test$data_wide <- NULL


LK_2014_diversity <- LK_2014_test


LK_2016_merge <- read_csv("bioLK2016_2.csv")
LK_2016_merge <- data.frame(LK_2016_merge)


LK_2016_abun <- count(LK_2016_merge, vars = "SPECIES_CD")
LK_2016_abun$YEAR <- "2016"



LK_2016_test = LK_2016_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2016_test$data <- NULL
LK_2016_test$data_wide <- NULL


LK_2016_diversity <- LK_2016_test


LK_2018_merge <- read_csv("bioLK2018_2.csv")
LK_2018_merge <- data.frame(LK_2018_merge)


LK_2018_abun <- count(LK_2018_merge, vars = "SPECIES_CD")
LK_2018_abun$YEAR <- "2018"



LK_2018_test = LK_2018_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



LK_2018_test$data <- NULL
LK_2018_test$data_wide <- NULL


LK_2018_diversity <- LK_2018_test


LK_diversity <- rbind(LK_1999_diversity, LK_2000_diversity,LK_2001_diversity, LK_2002_diversity,LK_2003_diversity,LK_2004_diversity,LK_2005_diversity,LK_2006_diversity,LK_2007_diversity,LK_2008_diversity,LK_2009_diversity,LK_2010_diversity, LK_2011_diversity,LK_2012_diversity,LK_2014_diversity,LK_2016_diversity,LK_2018_diversity)

export(LK_diversity,"diversity/All_LK_Diversity.csv")



### Middle Keys 

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/MK/biomass")

MK_1999_merge <- read_csv("bioMK1999_2.csv")
MK_1999_merge <- data.frame(MK_1999_merge)


MK_1999_abun <- count(MK_1999_merge, vars = "SPECIES_CD")
MK_1999_abun$YEAR <- "1999"



MK_1999_test = MK_1999_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_1999_test$data <- NULL
MK_1999_test$data_wide <- NULL


MK_1999_diversity <- MK_1999_test



MK_2000_merge <- read_csv("bioMK2000_2.csv")
MK_2000_merge <- data.frame(MK_2000_merge)


MK_2000_abun <- count(MK_2000_merge, vars = "SPECIES_CD")
MK_2000_abun$YEAR <- "2000"



MK_2000_test = MK_2000_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2000_test$data <- NULL
MK_2000_test$data_wide <- NULL


MK_2000_diversity <- MK_2000_test


MK_2001_merge <- read_csv("bioMK2001_2.csv")
MK_2001_merge <- data.frame(MK_2001_merge)


MK_2001_abun <- count(MK_2001_merge, vars = "SPECIES_CD")
MK_2001_abun$YEAR <- "2001"



MK_2001_test = MK_2001_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2001_test$data <- NULL
MK_2001_test$data_wide <- NULL


MK_2001_diversity <- MK_2001_test


MK_2002_merge <- read_csv("bioMK2002_2.csv")
MK_2002_merge <- data.frame(MK_2002_merge)


MK_2002_abun <- count(MK_2002_merge, vars = "SPECIES_CD")
MK_2002_abun$YEAR <- "2002"



MK_2002_test = MK_2002_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2002_test$data <- NULL
MK_2002_test$data_wide <- NULL


MK_2002_diversity <- MK_2002_test


MK_2003_merge <- read_csv("bioMK2003_2.csv")
MK_2003_merge <- data.frame(MK_2003_merge)


MK_2003_abun <- count(MK_2003_merge, vars = "SPECIES_CD")
MK_2003_abun$YEAR <- "2003"



MK_2003_test = MK_2003_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2003_test$data <- NULL
MK_2003_test$data_wide <- NULL


MK_2003_diversity <- MK_2003_test


MK_2004_merge <- read_csv("bioMK2004_2.csv")
MK_2004_merge <- data.frame(MK_2004_merge)


MK_2004_abun <- count(MK_2004_merge, vars = "SPECIES_CD")
MK_2004_abun$YEAR <- "2004"



MK_2004_test = MK_2004_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2004_test$data <- NULL
MK_2004_test$data_wide <- NULL


MK_2004_diversity <- MK_2004_test


MK_2005_merge <- read_csv("bioMK2005_2.csv")
MK_2005_merge <- data.frame(MK_2005_merge)


MK_2005_abun <- count(MK_2005_merge, vars = "SPECIES_CD")
MK_2005_abun$YEAR <- "2005"



MK_2005_test = MK_2005_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2005_test$data <- NULL
MK_2005_test$data_wide <- NULL


MK_2005_diversity <- MK_2005_test


MK_2006_merge <- read_csv("bioMK2006_2.csv")
MK_2006_merge <- data.frame(MK_2006_merge)


MK_2006_abun <- count(MK_2006_merge, vars = "SPECIES_CD")
MK_2006_abun$YEAR <- "2006"



MK_2006_test = MK_2006_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2006_test$data <- NULL
MK_2006_test$data_wide <- NULL


MK_2006_diversity <- MK_2006_test


MK_2007_merge <- read_csv("bioMK2007_2.csv")
MK_2007_merge <- data.frame(MK_2007_merge)


MK_2007_abun <- count(MK_2007_merge, vars = "SPECIES_CD")
MK_2007_abun$YEAR <- "2007"



MK_2007_test = MK_2007_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2007_test$data <- NULL
MK_2007_test$data_wide <- NULL


MK_2007_diversity <- MK_2007_test


MK_2008_merge <- read_csv("bioMK2008_2.csv")
MK_2008_merge <- data.frame(MK_2008_merge)


MK_2008_abun <- count(MK_2008_merge, vars = "SPECIES_CD")
MK_2008_abun$YEAR <- "2008"



MK_2008_test = MK_2008_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2008_test$data <- NULL
MK_2008_test$data_wide <- NULL


MK_2008_diversity <- MK_2008_test


MK_2009_merge <- read_csv("bioMK2009_2.csv")
MK_2009_merge <- data.frame(MK_2009_merge)


MK_2009_abun <- count(MK_2009_merge, vars = "SPECIES_CD")
MK_2009_abun$YEAR <- "2009"



MK_2009_test = MK_2009_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2009_test$data <- NULL
MK_2009_test$data_wide <- NULL


MK_2009_diversity <- MK_2009_test


MK_2010_merge <- read_csv("bioMK2010_2.csv")
MK_2010_merge <- data.frame(MK_2010_merge)


MK_2010_abun <- count(MK_2010_merge, vars = "SPECIES_CD")
MK_2010_abun$YEAR <- "2010"



MK_2010_test = MK_2010_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2010_test$data <- NULL
MK_2010_test$data_wide <- NULL


MK_2010_diversity <- MK_2010_test


MK_2011_merge <- read_csv("bioMK2011_2.csv")
MK_2011_merge <- data.frame(MK_2011_merge)


MK_2011_abun <- count(MK_2011_merge, vars = "SPECIES_CD")
MK_2011_abun$YEAR <- "2011"



MK_2011_test = MK_2011_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2011_test$data <- NULL
MK_2011_test$data_wide <- NULL


MK_2011_diversity <- MK_2011_test



MK_2012_merge <- read_csv("bioMK2012_2.csv")
MK_2012_merge <- data.frame(MK_2012_merge)


MK_2012_abun <- count(MK_2012_merge, vars = "SPECIES_CD")
MK_2012_abun$YEAR <- "2012"



MK_2012_test = MK_2012_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2012_test$data <- NULL
MK_2012_test$data_wide <- NULL


MK_2012_diversity <- MK_2012_test


MK_2014_merge <- read_csv("bioMK2014_2.csv")
MK_2014_merge <- data.frame(MK_2014_merge)


MK_2014_abun <- count(MK_2014_merge, vars = "SPECIES_CD")
MK_2014_abun$YEAR <- "2014"



MK_2014_test = MK_2014_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2014_test$data <- NULL
MK_2014_test$data_wide <- NULL


MK_2014_diversity <- MK_2014_test


MK_2016_merge <- read_csv("bioMK2016_2.csv")
MK_2016_merge <- data.frame(MK_2016_merge)


MK_2016_abun <- count(MK_2016_merge, vars = "SPECIES_CD")
MK_2016_abun$YEAR <- "2016"



MK_2016_test = MK_2016_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2016_test$data <- NULL
MK_2016_test$data_wide <- NULL


MK_2016_diversity <- MK_2016_test


MK_2018_merge <- read_csv("bioMK2018_2.csv")
MK_2018_merge <- data.frame(MK_2018_merge)


MK_2018_abun <- count(MK_2018_merge, vars = "SPECIES_CD")
MK_2018_abun$YEAR <- "2018"



MK_2018_test = MK_2018_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



MK_2018_test$data <- NULL
MK_2018_test$data_wide <- NULL


MK_2018_diversity <- MK_2018_test


MK_diversity <- rbind(MK_1999_diversity, MK_2000_diversity,MK_2001_diversity, MK_2002_diversity,MK_2003_diversity,MK_2005_diversity,MK_2006_diversity,MK_2007_diversity,MK_2008_diversity,MK_2009_diversity,MK_2010_diversity,MK_2011_diversity,MK_2012_diversity,MK_2014_diversity,MK_2016_diversity,MK_2018_diversity)

export(MK_diversity,"diversity/All_MK_Diversity.csv")


setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/UK/biomass")

UK_1999_merge <- read_csv("bioUK1999_2.csv")
UK_1999_merge <- data.frame(UK_1999_merge)


UK_1999_abun <- count(UK_1999_merge, vars = "SPECIES_CD")
UK_1999_abun$YEAR <- "1999"



UK_1999_test = UK_1999_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_1999_test$data <- NULL
UK_1999_test$data_wide <- NULL


UK_1999_diversity <- UK_1999_test



UK_2000_merge <- read_csv("bioUK2000_2.csv")
UK_2000_merge <- data.frame(UK_2000_merge)


UK_2000_abun <- count(UK_2000_merge, vars = "SPECIES_CD")
UK_2000_abun$YEAR <- "2000"



UK_2000_test = UK_2000_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2000_test$data <- NULL
UK_2000_test$data_wide <- NULL


UK_2000_diversity <- UK_2000_test


UK_2001_merge <- read_csv("bioUK2001_2.csv")
UK_2001_merge <- data.frame(UK_2001_merge)


UK_2001_abun <- count(UK_2001_merge, vars = "SPECIES_CD")
UK_2001_abun$YEAR <- "2001"



UK_2001_test = UK_2001_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2001_test$data <- NULL
UK_2001_test$data_wide <- NULL


UK_2001_diversity <- UK_2001_test


UK_2002_merge <- read_csv("bioUK2002_2.csv")
UK_2002_merge <- data.frame(UK_2002_merge)


UK_2002_abun <- count(UK_2002_merge, vars = "SPECIES_CD")
UK_2002_abun$YEAR <- "2002"



UK_2002_test = UK_2002_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2002_test$data <- NULL
UK_2002_test$data_wide <- NULL


UK_2002_diversity <- UK_2002_test


UK_2003_merge <- read_csv("bioUK2003_2.csv")
UK_2003_merge <- data.frame(UK_2003_merge)


UK_2003_abun <- count(UK_2003_merge, vars = "SPECIES_CD")
UK_2003_abun$YEAR <- "2003"



UK_2003_test = UK_2003_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2003_test$data <- NULL
UK_2003_test$data_wide <- NULL


UK_2003_diversity <- UK_2003_test


UK_2004_merge <- read_csv("bioUK2004_2.csv")
UK_2004_merge <- data.frame(UK_2004_merge)


UK_2004_abun <- count(UK_2004_merge, vars = "SPECIES_CD")
UK_2004_abun$YEAR <- "2004"



UK_2004_test = UK_2004_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2004_test$data <- NULL
UK_2004_test$data_wide <- NULL


UK_2004_diversity <- UK_2004_test


UK_2005_merge <- read_csv("bioUK2005_2.csv")
UK_2005_merge <- data.frame(UK_2005_merge)


UK_2005_abun <- count(UK_2005_merge, vars = "SPECIES_CD")
UK_2005_abun$YEAR <- "2005"



UK_2005_test = UK_2005_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2005_test$data <- NULL
UK_2005_test$data_wide <- NULL


UK_2005_diversity <- UK_2005_test


UK_2006_merge <- read_csv("bioUK2006_2.csv")
UK_2006_merge <- data.frame(UK_2006_merge)


UK_2006_abun <- count(UK_2006_merge, vars = "SPECIES_CD")
UK_2006_abun$YEAR <- "2006"



UK_2006_test = UK_2006_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2006_test$data <- NULL
UK_2006_test$data_wide <- NULL


UK_2006_diversity <- UK_2006_test


UK_2007_merge <- read_csv("bioUK2007_2.csv")
UK_2007_merge <- data.frame(UK_2007_merge)


UK_2007_abun <- count(UK_2007_merge, vars = "SPECIES_CD")
UK_2007_abun$YEAR <- "2007"



UK_2007_test = UK_2007_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2007_test$data <- NULL
UK_2007_test$data_wide <- NULL


UK_2007_diversity <- UK_2007_test


UK_2008_merge <- read_csv("bioUK2008_2.csv")
UK_2008_merge <- data.frame(UK_2008_merge)


UK_2008_abun <- count(UK_2008_merge, vars = "SPECIES_CD")
UK_2008_abun$YEAR <- "2008"



UK_2008_test = UK_2008_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2008_test$data <- NULL
UK_2008_test$data_wide <- NULL


UK_2008_diversity <- UK_2008_test


UK_2009_merge <- read_csv("bioUK2009_2.csv")
UK_2009_merge <- data.frame(UK_2009_merge)


UK_2009_abun <- count(UK_2009_merge, vars = "SPECIES_CD")
UK_2009_abun$YEAR <- "2009"



UK_2009_test = UK_2009_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2009_test$data <- NULL
UK_2009_test$data_wide <- NULL


UK_2009_diversity <- UK_2009_test


UK_2010_merge <- read_csv("bioUK2010_2.csv")
UK_2010_merge <- data.frame(UK_2010_merge)


UK_2010_abun <- count(UK_2010_merge, vars = "SPECIES_CD")
UK_2010_abun$YEAR <- "2010"



UK_2010_test = UK_2010_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2010_test$data <- NULL
UK_2010_test$data_wide <- NULL


UK_2010_diversity <- UK_2010_test


UK_2011_merge <- read_csv("bioUK2011_2.csv")
UK_2011_merge <- data.frame(UK_2011_merge)


UK_2011_abun <- count(UK_2011_merge, vars = "SPECIES_CD")
UK_2011_abun$YEAR <- "2011"



UK_2011_test = UK_2011_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2011_test$data <- NULL
UK_2011_test$data_wide <- NULL


UK_2011_diversity <- UK_2011_test



UK_2012_merge <- read_csv("bioUK2012_2.csv")
UK_2012_merge <- data.frame(UK_2012_merge)


UK_2012_abun <- count(UK_2012_merge, vars = "SPECIES_CD")
UK_2012_abun$YEAR <- "2012"



UK_2012_test = UK_2012_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2012_test$data <- NULL
UK_2012_test$data_wide <- NULL


UK_2012_diversity <- UK_2012_test


UK_2014_merge <- read_csv("bioUK2014_2.csv")
UK_2014_merge <- data.frame(UK_2014_merge)


UK_2014_abun <- count(UK_2014_merge, vars = "SPECIES_CD")
UK_2014_abun$YEAR <- "2014"



UK_2014_test = UK_2014_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2014_test$data <- NULL
UK_2014_test$data_wide <- NULL


UK_2014_diversity <- UK_2014_test


UK_2016_merge <- read_csv("bioUK2016_2.csv")
UK_2016_merge <- data.frame(UK_2016_merge)


UK_2016_abun <- count(UK_2016_merge, vars = "SPECIES_CD")
UK_2016_abun$YEAR <- "2016"



UK_2016_test = UK_2016_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2016_test$data <- NULL
UK_2016_test$data_wide <- NULL


UK_2016_diversity <- UK_2016_test


UK_2018_merge <- read_csv("bioUK2018_2.csv")
UK_2018_merge <- data.frame(UK_2018_merge)


UK_2018_abun <- count(UK_2018_merge, vars = "SPECIES_CD")
UK_2018_abun$YEAR <- "2018"



UK_2018_test = UK_2018_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



UK_2018_test$data <- NULL
UK_2018_test$data_wide <- NULL


UK_2018_diversity <- UK_2018_test


UK_diversity <- rbind(UK_1999_diversity, UK_2000_diversity,UK_2001_diversity, UK_2002_diversity,UK_2003_diversity,UK_2004_diversity,UK_2005_diversity,UK_2006_diversity,UK_2007_diversity,UK_2008_diversity,UK_2009_diversity,UK_2010_diversity,UK_2011_diversity,UK_2012_diversity,UK_2014_diversity,UK_2016_diversity,UK_2018_diversity)

export(UK_diversity,"diversity/All_UK_Diversity.csv")



### SE Florida 


setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/SE_F/biomass")



SEF_2013_merge <- read_csv("bioSEF2013_2.csv")
SEF_2013_merge <- data.frame(SEF_2013_merge)


SEF_2013_abun <- count(SEF_2013_merge, vars = "SPECIES_CD")
SEF_2013_abun$YEAR <- "2013"



SEF_2013_test = SEF_2013_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



SEF_2013_test$data <- NULL
SEF_2013_test$data_wide <- NULL


SEF_2013_diversity <- SEF_2013_test


SEF_2014_merge <- read_csv("bioSEF2014_2.csv")
SEF_2014_merge <- data.frame(SEF_2014_merge)


SEF_2014_abun <- count(SEF_2014_merge, vars = "SPECIES_CD")
SEF_2014_abun$YEAR <- "2014"



SEF_2014_test = SEF_2014_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



SEF_2014_test$data <- NULL
SEF_2014_test$data_wide <- NULL


SEF_2014_diversity <- SEF_2014_test




SEF_2015_merge <- read_csv("bioSEF2015_2.csv")
SEF_2015_merge <- data.frame(SEF_2015_merge)


SEF_2015_abun <- count(SEF_2015_merge, vars = "SPECIES_CD")
SEF_2015_abun$YEAR <- "2015"



SEF_2015_test = SEF_2015_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



SEF_2015_test$data <- NULL
SEF_2015_test$data_wide <- NULL


SEF_2015_diversity <- SEF_2015_test

SEF_2016_merge <- read_csv("bioSEF2016_2.csv")
SEF_2016_merge <- data.frame(SEF_2016_merge)


SEF_2016_abun <- count(SEF_2016_merge, vars = "SPECIES_CD")
SEF_2016_abun$YEAR <- "2016"



SEF_2016_test = SEF_2016_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



SEF_2016_test$data <- NULL
SEF_2016_test$data_wide <- NULL


SEF_2016_diversity <- SEF_2016_test


SEF_2018_merge <- read_csv("bioSEF2018_2.csv")
SEF_2018_merge <- data.frame(SEF_2018_merge)


SEF_2018_abun <- count(SEF_2018_merge, vars = "SPECIES_CD")
SEF_2018_abun$YEAR <- "2018"



SEF_2018_test = SEF_2018_abun %>% 
  select(YEAR, SPECIES_CD, freq) %>%  
  group_by(YEAR, freq) %>% #48 groups 
  nest(-YEAR) %>%  
  mutate(
    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, freq, fill = 0)), 
    #species richness 
    richness = map(
      data_wide, 
      function(x) specnumber(x)),
    #simpson diversity as effective number of species 
    simpson = map( 
      data_wide,
      function(x) 1/(1 - diversity(x, index = 'simpson'))),
    #shannon diversity as effective number of species 
    shannon = map(
      data_wide,
      function(x) exp(diversity(x, index = 'shannon')))) %>%
  unnest(c(richness, simpson, shannon))



SEF_2018_test$data <- NULL
SEF_2018_test$data_wide <- NULL


SEF_2018_diversity <- SEF_2018_test

SEF_diversity <- rbind(SEF_2013_diversity,SEF_2014_diversity,SEF_2015_diversity,SEF_2016_diversity,SEF_2018_diversity)

export(SEF_diversity,"diversity/All_SEF_Diversity.csv")

### Simpson, Shannon, and Richness per subregion provided..


### Change to IEA guidelines 


## Dry Tortugas manipulation

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/DT/biomass/diversity")


DT_richness_IEA <- read_csv("All_DT_diversity.csv")

DT_richness_IEA$simpson <- NULL
DT_richness_IEA$shannon <- NULL

DT_richness_frame <- data.frame(DT_richness_IEA, stringsAsFactors=FALSE)
DT_richness_frame_rounded <- DT_richness_frame %>%
  mutate_if(is.numeric,round,digits = 1)



IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","richness")

IEA_row2 <- data.frame("extent","DT",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","richness")

DT_richness_IEA_final <- rbind(IEA_row1,IEA_row2,DT_richness_frame_rounded)

# simpson

DT_simpson_IEA <- read_csv("All_DT_diversity.csv")

DT_simpson_IEA$richness <- NULL
DT_simpson_IEA$shannon <- NULL

DT_simpson_frame <- data.frame(DT_simpson_IEA, stringsAsFactors=FALSE)
DT_simpson_frame_rounded <- DT_simpson_frame %>%
  mutate_if(is.numeric,round,digits = 1)


DT_simpson_frame <- data.frame(DT_simpson_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","simpson")

IEA_row2 <- data.frame("extent","DT",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","simpson")

DT_simpson_IEA_final <- rbind(IEA_row1,IEA_row2,DT_simpson_frame_rounded)


# shannon

DT_shannon_IEA <- read_csv("All_DT_diversity.csv")

DT_shannon_IEA$richness <- NULL
DT_shannon_IEA$simpson <- NULL

DT_shannon_frame <- data.frame(DT_shannon_IEA, stringsAsFactors=FALSE)
DT_shannon_frame_rounded <- DT_shannon_frame %>%
  mutate_if(is.numeric,round,digits = 1)

DT_shannon_frame <- data.frame(DT_shannon_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","shannon")

IEA_row2 <- data.frame("extent","DT",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","shannon")

DT_shannon_IEA_final <- rbind(IEA_row1,IEA_row2,DT_shannon_frame_rounded)


## Lower Keys 

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/LK/biomass/diversity")


LK_richness_IEA <- read_csv("All_LK_diversity.csv")

LK_richness_IEA$simpson <- NULL
LK_richness_IEA$shannon <- NULL

LK_richness_frame <- data.frame(LK_richness_IEA, stringsAsFactors=FALSE)
LK_richness_frame_rounded <- LK_richness_frame %>%
  mutate_if(is.numeric,round,digits = 1)



IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","richness")

IEA_row2 <- data.frame("extent","LK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","richness")

LK_richness_IEA_final <- rbind(IEA_row1,IEA_row2,LK_richness_frame_rounded)

# simpson

LK_simpson_IEA <- read_csv("All_LK_diversity.csv")

LK_simpson_IEA$richness <- NULL
LK_simpson_IEA$shannon <- NULL

LK_simpson_frame <- data.frame(LK_simpson_IEA, stringsAsFactors=FALSE)
LK_simpson_frame_rounded <- LK_simpson_frame %>%
  mutate_if(is.numeric,round,digits = 1)


LK_simpson_frame <- data.frame(LK_simpson_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","simpson")

IEA_row2 <- data.frame("extent","LK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","simpson")

LK_simpson_IEA_final <- rbind(IEA_row1,IEA_row2,LK_simpson_frame_rounded)


# shannon

LK_shannon_IEA <- read_csv("All_LK_diversity.csv")

LK_shannon_IEA$richness <- NULL
LK_shannon_IEA$simpson <- NULL

LK_shannon_frame <- data.frame(LK_shannon_IEA, stringsAsFactors=FALSE)
LK_shannon_frame_rounded <- LK_shannon_frame %>%
  mutate_if(is.numeric,round,digits = 1)

LK_shannon_frame <- data.frame(LK_shannon_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","shannon")

IEA_row2 <- data.frame("extent","LK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","shannon")

LK_shannon_IEA_final <- rbind(IEA_row1,IEA_row2,LK_shannon_frame_rounded)


# MK

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/MK/biomass/diversity")


MK_richness_IEA <- read_csv("All_MK_diversity.csv")

MK_richness_IEA$simpson <- NULL
MK_richness_IEA$shannon <- NULL

MK_richness_frame <- data.frame(MK_richness_IEA, stringsAsFactors=FALSE)
MK_richness_frame_rounded <- MK_richness_frame %>%
  mutate_if(is.numeric,round,digits = 1)



IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","richness")

IEA_row2 <- data.frame("extent","MK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","richness")

MK_richness_IEA_final <- rbind(IEA_row1,IEA_row2,MK_richness_frame_rounded)

# simpson

MK_simpson_IEA <- read_csv("All_MK_diversity.csv")

MK_simpson_IEA$richness <- NULL
MK_simpson_IEA$shannon <- NULL

MK_simpson_frame <- data.frame(MK_simpson_IEA, stringsAsFactors=FALSE)
MK_simpson_frame_rounded <- MK_simpson_frame %>%
  mutate_if(is.numeric,round,digits = 1)


MK_simpson_frame <- data.frame(MK_simpson_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","simpson")

IEA_row2 <- data.frame("extent","MK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","simpson")

MK_simpson_IEA_final <- rbind(IEA_row1,IEA_row2,MK_simpson_frame_rounded)


# shannon

MK_shannon_IEA <- read_csv("All_MK_diversity.csv")

MK_shannon_IEA$richness <- NULL
MK_shannon_IEA$simpson <- NULL

MK_shannon_frame <- data.frame(MK_shannon_IEA, stringsAsFactors=FALSE)
MK_shannon_frame_rounded <- MK_shannon_frame %>%
  mutate_if(is.numeric,round,digits = 1)

MK_shannon_frame <- data.frame(MK_shannon_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","shannon")

IEA_row2 <- data.frame("extent","MK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","shannon")

MK_shannon_IEA_final <- rbind(IEA_row1,IEA_row2,MK_shannon_frame_rounded)


## UK


setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/UK/biomass/diversity")


UK_richness_IEA <- read_csv("All_UK_diversity.csv")

UK_richness_IEA$simpson <- NULL
UK_richness_IEA$shannon <- NULL

UK_richness_frame <- data.frame(UK_richness_IEA, stringsAsFactors=FALSE)
UK_richness_frame_rounded <- UK_richness_frame %>%
  mutate_if(is.numeric,round,digits = 1)



IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","richness")

IEA_row2 <- data.frame("extent","UK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","richness")

UK_richness_IEA_final <- rbind(IEA_row1,IEA_row2,UK_richness_frame_rounded)

# simpson

UK_simpson_IEA <- read_csv("All_UK_diversity.csv")

UK_simpson_IEA$richness <- NULL
UK_simpson_IEA$shannon <- NULL

UK_simpson_frame <- data.frame(UK_simpson_IEA, stringsAsFactors=FALSE)
UK_simpson_frame_rounded <- UK_simpson_frame %>%
  mutate_if(is.numeric,round,digits = 1)


UK_simpson_frame <- data.frame(UK_simpson_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","simpson")

IEA_row2 <- data.frame("extent","UK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","simpson")

UK_simpson_IEA_final <- rbind(IEA_row1,IEA_row2,UK_simpson_frame_rounded)


# shannon

UK_shannon_IEA <- read_csv("All_UK_diversity.csv")

UK_shannon_IEA$richness <- NULL
UK_shannon_IEA$simpson <- NULL

UK_shannon_frame <- data.frame(UK_shannon_IEA, stringsAsFactors=FALSE)
UK_shannon_frame_rounded <- UK_shannon_frame %>%
  mutate_if(is.numeric,round,digits = 1)

UK_shannon_frame <- data.frame(UK_shannon_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","shannon")

IEA_row2 <- data.frame("extent","UK",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","shannon")

UK_shannon_IEA_final <- rbind(IEA_row1,IEA_row2,UK_shannon_frame_rounded)

# SEF


setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/SE_F/biomass/diversity")


SEF_richness_IEA <- read_csv("All_SEF_diversity.csv")

SEF_richness_IEA$simpson <- NULL
SEF_richness_IEA$shannon <- NULL

SEF_richness_frame <- data.frame(SEF_richness_IEA, stringsAsFactors=FALSE)
SEF_richness_frame_rounded <- SEF_richness_frame %>%
  mutate_if(is.numeric,round,digits = 1)



IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","richness")

IEA_row2 <- data.frame("extent","SEF",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","richness")

SEF_richness_IEA_final <- rbind(IEA_row1,IEA_row2,SEF_richness_frame_rounded)

# simpson

SEF_simpson_IEA <- read_csv("All_SEF_diversity.csv")

SEF_simpson_IEA$richness <- NULL
SEF_simpson_IEA$shannon <- NULL

SEF_simpson_frame <- data.frame(SEF_simpson_IEA, stringsAsFactors=FALSE)
SEF_simpson_frame_rounded <- SEF_simpson_frame %>%
  mutate_if(is.numeric,round,digits = 1)


SEF_simpson_frame <- data.frame(SEF_simpson_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","simpson")

IEA_row2 <- data.frame("extent","SEF",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","simpson")

SEF_simpson_IEA_final <- rbind(IEA_row1,IEA_row2,SEF_simpson_frame_rounded)


# shannon

SEF_shannon_IEA <- read_csv("All_SEF_diversity.csv")

SEF_shannon_IEA$richness <- NULL
SEF_shannon_IEA$simpson <- NULL

SEF_shannon_frame <- data.frame(SEF_shannon_IEA, stringsAsFactors=FALSE)
SEF_shannon_frame_rounded <- SEF_shannon_frame %>%
  mutate_if(is.numeric,round,digits = 1)

SEF_shannon_frame <- data.frame(SEF_shannon_IEA, stringsAsFactors=FALSE)


IEA_row1 <- data.frame("units","count/sampling-day",stringsAsFactors=FALSE)
names(IEA_row1) <- c("YEAR","shannon")

IEA_row2 <- data.frame("extent","SEF",stringsAsFactors=FALSE)
names(IEA_row2) <- c("YEAR","shannon")

SEF_shannon_IEA_final <- rbind(IEA_row1,IEA_row2,SEF_shannon_frame_rounded)



## output

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/IEA_index")

export(DT_richness_IEA_final,"DT_IEA_richness.csv")
export(DT_simpson_IEA_final,"DT_IEA_simpson.csv")
export(DT_shannon_IEA_final,"DT_IEA_shannon.csv")
export(LK_richness_IEA_final,"LK_IEA_richness.csv")
export(LK_simpson_IEA_final,"LK_IEA_simpson.csv")
export(LK_shannon_IEA_final,"LK_IEA_shannon.csv")
export(MK_richness_IEA_final,"MK_IEA_richness.csv")
export(MK_simpson_IEA_final,"MK_IEA_simpson.csv")
export(MK_shannon_IEA_final,"MK_IEA_shannon.csv")
export(UK_richness_IEA_final,"UK_IEA_richness.csv")
export(UK_simpson_IEA_final,"UK_IEA_simpson.csv")
export(UK_shannon_IEA_final,"UK_IEA_shannon.csv")
export(SEF_richness_IEA_final,"SEF_IEA_richness.csv")
export(SEF_simpson_IEA_final,"SEF_IEA_simpson.csv")
export(SEF_shannon_IEA_final,"SEF_IEA_shannon.csv")




