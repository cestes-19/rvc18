library(knitr)
library(tidyverse)
library(rvc)
library(vegan)
library(dygraphs)
library(grDevices)
library(RColorBrewer)
```
## Other Groups
```{r Other Groups}

setwd("C:/Users/cestes/Documents/R/mhepner_rvc/OtherGroups")
#### Corals, Lobster, Queen Conch
#cremp_abund       = read.csv("C:/Users/luke.mceachron/Documents/Git/RVC/OtherGroups/CREMP_Pcover_group.csv")
#lobster = read.csv("C:/Users/luke.mceachron/Documents/Git/RVC/OtherGroups/Lobster_landings.csv")
#conch = read.csv("C:/Users/luke.mceachron/Documents/Git/RVC/OtherGroups/QueenConchData.csv")
#crichness<-read.csv("C:/Users/luke.mceachron/Documents/Git/RVC/OtherGroups/CREMP_Domain_Coral_Richness.csv")
cremp_abund = read_csv("CREMP_Pcover_group.csv")
crichness <- read.csv("crichness.csv")
#Parsed with column specification:
#cols(
#Year = col_integer(),
#Macroalgae = col_double(),
#Cyano = col_double(),
#Octocoral = col_double(),
#Others = col_double(),
#Porifera = col_double(),
#Seagrass = col_double(),
#`Stony Coral` = col_double(),
#Zoanthidea = col_double(),
#Urchins = col_double())
head(sc_pcov_spp)
names(crichness)
#Estimate Coral shannon/simpson diversity using Average site level percent cover. Richness is estimated from the full domain of CREMP samples, rather than average site level richness.
library(vegan)
sc_pcov_spp       = read.csv("CREMP_Pcover_spp_tpose.csv")
sc_pcov_spp=sc_pcov_spp[-c(1)]

for (i in 1:nrow(sc_pcov_spp)) {
  Richness<-(crichness$Domain.Richness)
  Shannon<-diversity(sc_pcov_spp,index="shannon")
  Shannon_Effective_Number<-(exp(diversity(sc_pcov_spp,index="shannon")))
  Simpson<-(diversity(sc_pcov_spp,index="simpson"))
  Simpson_Effective_Number<-(1/(1-(diversity(sc_pcov_spp,index="simpson"))))
  coral1<-cbind(Richness,Shannon,Shannon_Effective_Number,Simpson,Simpson_Effective_Number)
}

years<-rbind(1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017)
colnames(years)[1]<-"Year"
coral_diversity<-cbind(coral1,years)
coral_diversity
## Everything else is basically just relative abundance data via mean site level % cover (CREMP data), landings (lobster), and Abundance per aggregation (conch)
algaecover<-cremp_abund[c(1:2)]
octocover<-cremp_abund[c(1,4)]
stonycover<-cremp_abund[c(1,7)]


dygraph(algaecover, main = 'Macroalgae Mean % Cover') %>%
  dyAxis("y", label = "Macroalgae % Cover") %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = T)
dygraph(octocover, main = 'Octocoral Mean % Cover') %>%
  dyAxis("y", label = "Octocoral % Cover") %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = T)
dygraph(stonycover, main = 'Stony Coral Mean % Cover') %>%
  dyAxis("y", label = "Stony Coral % Cover") %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = T)

##Biodiversity plots

# I exported to csv and put the 'year' column in the first column 
#write.csv(coral_diversity, "coral_diversity.csv"
          
coral_diversity_year_first = read.csv("coral_diversity_year_first.csv")

ShannonG <-coral_diversity_year_first[c(1,3)]
SimpsonG <-coral_diversity_year_first[c(1,5)]

dygraph(ShannonG, main = 'Shannon Diversity for FL Keys Corals')%>%
  dyAxis("y", label = "Shannon")%>% 
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = T)

dygraph(SimpsonG, main = 'Simpson Diversity for FL Keys Corals')%>%
  dyAxis("y", label = "Simpson") %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = T)


lobster
conch

lobster1=lobster[-c(4)]
dygraph(lobster1, main = 'Lobster Commercial and Recreational Landings') %>%
  dyAxis("y", label = "Landings (Lbs.)") %>%
  dyAxis("x", label = "Year") %>%
  dySeries("Commercial_lbs", label = "Commercial Landings", color = "blue") %>%
  dySeries("Recreational_lbs", label = "Recreational Landings", color = "red") %>%
  dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 1.5) %>% #drawGrid = F
  dyLegend(width = 400)
conch1=conch[-c(3:4)]
dygraph(conch1, main = 'Queen Conch, Relative Abundance in Sampled Breeding Aggregations') %>%
  dyAxis("y", label = "Abundance") %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = T)
#For some reason, the Y axis values are not representing the data. E.g., In 1996, the Species Richness line starts at 60 on the y axis, but the data (when you roll over) indicate Richness equals 43.
coraldiv<-as.data.frame(coral_diversity)
coraldiv1=coraldiv[-c(2,4)]
dygraph(coraldiv1, main = 'Coral Diversity') %>%
  dyAxis("x", label = "Year") %>%
  dyAxis("y", label = "Diversity") %>%
  dySeries("Richness", label = "Species Richness", color = "blue") %>%
  dySeries("Shannon_Effective_Number", label = "Shannon Effective Number", color = "red") %>%
  dySeries("Simpson_Effective_Number", label = "Simpson Effective Number", color = "green") %>%
  dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 1.5) %>% #drawGrid = F
  dyLegend(width = 400)
```
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
