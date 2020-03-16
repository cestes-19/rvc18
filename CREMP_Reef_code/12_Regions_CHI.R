

### CHI per Regions: UK, LK, MK, SEF, DT
setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF")



DT <- read_csv("DT/DT_reef_biomass_data.csv")

DT_1999 <- filter(DT, Year == "1999")


DT_1999_sum <- sum(DT_1999$sum)
DT_1999_merge <- data.frame(DT_1999_sum)

DT_1999_merge$Years <- "1999"
colnames(DT_1999_merge) <- c("Biomass","Year")


DT_2000 <- filter(DT, Year == "2000")


DT_2000_sum <- sum(DT_2000$sum)
DT_2000_merge <- data.frame(DT_2000_sum)

DT_2000_merge$Years <- "2000"
colnames(DT_2000_merge) <- c("Biomass","Year")


DT_2004 <- filter(DT, Year == "2004")


DT_2004_sum <- sum(DT_2004$sum)
DT_2004_merge <- data.frame(DT_2004_sum)

DT_2004_merge$Years <- "2004"
colnames(DT_2004_merge) <- c("Biomass","Year")


DT_2006 <- filter(DT, Year == "2006")


DT_2006_sum <- sum(DT_2006$sum)
DT_2006_merge <- data.frame(DT_2006_sum)

DT_2006_merge$Years <- "2006"
colnames(DT_2006_merge) <- c("Biomass","Year")


DT_2008 <- filter(DT, Year == "2008")


DT_2008_sum <- sum(DT_2008$sum)
DT_2008_merge <- data.frame(DT_2008_sum)

DT_2008_merge$Years <- "2008"
colnames(DT_2008_merge) <- c("Biomass","Year")


DT_2010 <- filter(DT, Year == "2010")


DT_2010_sum <- sum(DT_2010$sum)
DT_2010_merge <- data.frame(DT_2010_sum)

DT_2010_merge$Years <- "2010"
colnames(DT_2010_merge) <- c("Biomass","Year")


DT_2012 <- filter(DT, Year == "2012")


DT_2012_sum <- sum(DT_2012$sum)
DT_2012_merge <- data.frame(DT_2012_sum)

DT_2012_merge$Years <- "2012"
colnames(DT_2012_merge) <- c("Biomass","Year")



DT_2014 <- filter(DT, Year == "2014")


DT_2014_sum <- sum(DT_2014$sum)
DT_2014_merge <- data.frame(DT_2014_sum)

DT_2014_merge$Years <- "2014"
colnames(DT_2014_merge) <- c("Biomass","Year")


DT_2016 <- filter(DT, Year == "2016")


DT_2016_sum <- sum(DT_2016$sum)
DT_2016_merge <- data.frame(DT_2016_sum)

DT_2016_merge$Years <- "2016"
colnames(DT_2016_merge) <- c("Biomass","Year")


DT_CHI <- rbind(DT_1999_merge,DT_2000_merge,DT_2004_merge,DT_2006_merge,DT_2008_merge,DT_2010_merge,DT_2012_merge,DT_2014_merge,DT_2016_merge)

DT_CHI_test <- DT_CHI$Biomass/max(DT_CHI$Biomass)
DT_CHI_all <- data.frame(DT_CHI_test)

DT_CHI_all$Years <- c("1999","2000","2004","2006","2008","2010","2012","2014","2016")
colnames(DT_CHI_all) <- c("Biomass","Year")

DT_CHI_all_percent <- (100*DT_CHI_all$Biomass)
DT_CHI_percent <- data.frame(DT_CHI_all_percent)
DT_CHI_percent$Years <- c("1999","2000","2004","2006","2008","2010","2012","2014","2016")
colnames(DT_CHI_percent) <- c("Biomass","Year")


DT_CHI_percent <- DT_CHI_percent %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_DT <- read_csv("C:/Users/cestes/Documents/Spring_2020/1996_2017/Dry_Tortugas_averages.csv")

CREMP_DT <- CREMP_DT %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_DT_match <- filter(CREMP_DT, Year %in% c("1999","2000","2004","2006","2008","2010","2012","2014","2016"))

CREMP_DT_coral <- CREMP_DT_match$`Stony Coral`/max(CREMP_DT_match$`Stony Coral`)
CREMP_DT_coral <- data.frame(CREMP_DT_coral)
CREMP_DT_coral <- (100*CREMP_DT_coral)
CREMP_DT_coral <- CREMP_DT_coral %>%
  mutate_if(is.numeric,round,digits = 0)

CREMP_DT_coral$Years <- c("1999","2000","2004","2006","2008","2010","2012","2014","2016")
colnames(CREMP_DT_coral)<- c("Stony Coral","Year")



CREMP_DT_macro <- CREMP_DT_match$Macroalgae/max(CREMP_DT_match$Macroalgae)
CREMP_DT_macro <- data.frame(CREMP_DT_macro)
CREMP_DT_macro <- (100*CREMP_DT_macro)
CREMP_DT_macro <- CREMP_DT_macro %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_DT_macro$Years <- c("1999","2000","2004","2006","2008","2010","2012","2014","2016")
colnames(CREMP_DT_macro)<- c("Macroalgae","Year")



CREMP_RVC_DT <- full_join(CREMP_DT_coral,CREMP_DT_macro)
CREMP_RVC_DT_plot <- full_join(CREMP_RVC_DT, DT_CHI_percent)
export(CREMP_RVC_DT_plot,"DT/CREMP_RVC_CHI_DT.csv")



CREMP_RVC_DT_plot2 <- read.delim("DT/CREMP_RVC_CHI_DT.csv", sep=",")


CREMP_RVC_DT_plot3 <- melt(CREMP_RVC_DT_plot2, id.vars = "Year")




ggplot(CREMP_RVC_DT_plot3, aes(Year, value, fill =variable))+
  ggtitle("Coral Health Index", subtitle = "Dry Tortugas")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(CREMP_RVC_DT_plot3$Year), max(CREMP_RVC_DT_plot3$Year), by = 2),1))+
  #scale_color_manual(values=c( "indianred1","dodgerblue","forestgreen",))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/CHI_regions")

ggsave("DT.png", width = 8, height = 4)



### LK

setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF")

LK <- read_csv("LK/LK_reef_biomass_data.csv")

LK_1999 <- filter(LK, Year == "1999")


LK_1999_sum <- sum(LK_1999$sum)
LK_1999_merge <- data.frame(LK_1999_sum)

LK_1999_merge$Years <- "1999"
colnames(LK_1999_merge) <- c("Biomass","Year")


LK_2000 <- filter(LK, Year == "2000")


LK_2000_sum <- sum(LK_2000$sum)
LK_2000_merge <- data.frame(LK_2000_sum)

LK_2000_merge$Years <- "2000"
colnames(LK_2000_merge) <- c("Biomass","Year")

LK_2001 <- filter(LK, Year == "2001")


LK_2001_sum <- sum(LK_2001$sum)
LK_2001_merge <- data.frame(LK_2001_sum)

LK_2001_merge$Years <- "2001"
colnames(LK_2001_merge) <- c("Biomass","Year")


LK_2002 <- filter(LK, Year == "2002")


LK_2002_sum <- sum(LK_2002$sum)
LK_2002_merge <- data.frame(LK_2002_sum)

LK_2002_merge$Years <- "2002"
colnames(LK_2002_merge) <- c("Biomass","Year")


LK_2003 <- filter(LK, Year == "2003")


LK_2003_sum <- sum(LK_2003$sum)
LK_2003_merge <- data.frame(LK_2003_sum)

LK_2003_merge$Years <- "2003"
colnames(LK_2003_merge) <- c("Biomass","Year")



LK_2004 <- filter(LK, Year == "2004")


LK_2004_sum <- sum(LK_2004$sum)
LK_2004_merge <- data.frame(LK_2004_sum)

LK_2004_merge$Years <- "2004"
colnames(LK_2004_merge) <- c("Biomass","Year")


LK_2005 <- filter(LK, Year == "2005")


LK_2005_sum <- sum(LK_2005$sum)
LK_2005_merge <- data.frame(LK_2005_sum)

LK_2005_merge$Years <- "2005"
colnames(LK_2005_merge) <- c("Biomass","Year")




LK_2006 <- filter(LK, Year == "2006")


LK_2006_sum <- sum(LK_2006$sum)
LK_2006_merge <- data.frame(LK_2006_sum)

LK_2006_merge$Years <- "2006"
colnames(LK_2006_merge) <- c("Biomass","Year")


LK_2007 <- filter(LK, Year == "2007")


LK_2007_sum <- sum(LK_2007$sum)
LK_2007_merge <- data.frame(LK_2007_sum)

LK_2007_merge$Years <- "2007"
colnames(LK_2007_merge) <- c("Biomass","Year")



LK_2008 <- filter(LK, Year == "2008")


LK_2008_sum <- sum(LK_2008$sum)
LK_2008_merge <- data.frame(LK_2008_sum)

LK_2008_merge$Years <- "2008"
colnames(LK_2008_merge) <- c("Biomass","Year")


LK_2009 <- filter(LK, Year == "2009")


LK_2009_sum <- sum(LK_2009$sum)
LK_2009_merge <- data.frame(LK_2009_sum)

LK_2009_merge$Years <- "2009"
colnames(LK_2009_merge) <- c("Biomass","Year")



LK_2010 <- filter(LK, Year == "2010")


LK_2010_sum <- sum(LK_2010$sum)
LK_2010_merge <- data.frame(LK_2010_sum)

LK_2010_merge$Years <- "2010"
colnames(LK_2010_merge) <- c("Biomass","Year")


LK_2011 <- filter(LK, Year == "2011")


LK_2011_sum <- sum(LK_2011$sum)
LK_2011_merge <- data.frame(LK_2011_sum)

LK_2011_merge$Years <- "2011"
colnames(LK_2011_merge) <- c("Biomass","Year")




LK_2012 <- filter(LK, Year == "2012")


LK_2012_sum <- sum(LK_2012$sum)
LK_2012_merge <- data.frame(LK_2012_sum)

LK_2012_merge$Years <- "2012"
colnames(LK_2012_merge) <- c("Biomass","Year")



LK_2014 <- filter(LK, Year == "2014")


LK_2014_sum <- sum(LK_2014$sum)
LK_2014_merge <- data.frame(LK_2014_sum)

LK_2014_merge$Years <- "2014"
colnames(LK_2014_merge) <- c("Biomass","Year")


LK_2016 <- filter(LK, Year == "2016")


LK_2016_sum <- sum(LK_2016$sum)
LK_2016_merge <- data.frame(LK_2016_sum)

LK_2016_merge$Years <- "2016"
colnames(LK_2016_merge) <- c("Biomass","Year")


LK_2018 <- filter(LK, Year == "2018")


LK_2018_sum <- sum(LK_2018$sum)
LK_2018_merge <- data.frame(LK_2018_sum)

LK_2018_merge$Years <- "2018"
colnames(LK_2018_merge) <- c("Biomass","Year")




LK_CHI <- rbind(LK_1999_merge,LK_2000_merge,LK_2001_merge,LK_2002_merge,LK_2003_merge,LK_2004_merge,LK_2005_merge,LK_2006_merge,LK_2007_merge,LK_2008_merge,LK_2009_merge,LK_2010_merge,LK_2011_merge,LK_2012_merge,LK_2014_merge,LK_2016_merge,LK_2018_merge)

LK_CHI_test <- LK_CHI$Biomass/max(LK_CHI$Biomass)
LK_CHI_all <- data.frame(LK_CHI_test)

LK_CHI_all$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016","2018")
colnames(LK_CHI_all) <- c("Biomass","Year")

LK_CHI_all_percent <- (100*LK_CHI_all$Biomass)
LK_CHI_percent <- data.frame(LK_CHI_all_percent)
LK_CHI_percent$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016","2018")
colnames(LK_CHI_percent) <- c("Biomass","Year")


LK_CHI_percent <- LK_CHI_percent %>%
  mutate_if(is.numeric,round,digits = 0)



CREMP_LK <- read_csv("C:/Users/cestes/Documents/Spring_2020/1996_2017/Lower_Keys_averages.csv")

CREMP_LK <- CREMP_LK %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_LK_match <- filter(CREMP_LK, Year %in% c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016"))

CREMP_LK_coral <- CREMP_LK_match$`Stony Coral`/max(CREMP_LK_match$`Stony Coral`)
CREMP_LK_coral <- data.frame(CREMP_LK_coral)
CREMP_LK_coral <- (100*CREMP_LK_coral)
CREMP_LK_coral <- CREMP_LK_coral %>%
  mutate_if(is.numeric,round,digits = 0)

CREMP_LK_coral$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")
colnames(CREMP_LK_coral)<- c("Stony Coral","Year")



CREMP_LK_macro <- CREMP_LK_match$Macroalgae/max(CREMP_LK_match$Macroalgae)
CREMP_LK_macro <- data.frame(CREMP_LK_macro)
CREMP_LK_macro <- (100*CREMP_LK_macro)
CREMP_LK_macro <- CREMP_LK_macro %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_LK_macro$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")
colnames(CREMP_LK_macro)<- c("Macroalgae","Year")



CREMP_RVC_LK <- full_join(CREMP_LK_coral,CREMP_LK_macro)
CREMP_RVC_LK_plot <- full_join(CREMP_RVC_LK, LK_CHI_percent)
export(CREMP_RVC_LK_plot,"LK/CREMP_RVC_CHI_LK.csv")



CREMP_RVC_LK_plot2 <- read.delim("LK/CREMP_RVC_CHI_LK.csv", sep=",")


CREMP_RVC_LK_plot3 <- melt(CREMP_RVC_LK_plot2, id.vars = "Year")




ggplot(CREMP_RVC_LK_plot3, aes(Year, value, fill =variable))+
  ggtitle("Coral Health Index", subtitle = "Lower Keys")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(CREMP_RVC_LK_plot3$Year), max(CREMP_RVC_LK_plot3$Year), by = 2),1))+
  #scale_color_manual(values=c( "indianred1","dodgerblue","forestgreen",))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/CHI_regions")

ggsave("LK.png", width = 8, height = 4)




### MK

setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF")

MK <- read_csv("MK/MK_reef_biomass_data.csv")

MK_1999 <- filter(MK, Year == "1999")


MK_1999_sum <- sum(MK_1999$sum)
MK_1999_merge <- data.frame(MK_1999_sum)

MK_1999_merge$Years <- "1999"
colnames(MK_1999_merge) <- c("Biomass","Year")


MK_2000 <- filter(MK, Year == "2000")


MK_2000_sum <- sum(MK_2000$sum)
MK_2000_merge <- data.frame(MK_2000_sum)

MK_2000_merge$Years <- "2000"
colnames(MK_2000_merge) <- c("Biomass","Year")

MK_2001 <- filter(MK, Year == "2001")


MK_2001_sum <- sum(MK_2001$sum)
MK_2001_merge <- data.frame(MK_2001_sum)

MK_2001_merge$Years <- "2001"
colnames(MK_2001_merge) <- c("Biomass","Year")


MK_2002 <- filter(MK, Year == "2002")


MK_2002_sum <- sum(MK_2002$sum)
MK_2002_merge <- data.frame(MK_2002_sum)

MK_2002_merge$Years <- "2002"
colnames(MK_2002_merge) <- c("Biomass","Year")


MK_2003 <- filter(MK, Year == "2003")


MK_2003_sum <- sum(MK_2003$sum)
MK_2003_merge <- data.frame(MK_2003_sum)

MK_2003_merge$Years <- "2003"
colnames(MK_2003_merge) <- c("Biomass","Year")



MK_2004 <- filter(MK, Year == "2004")


MK_2004_sum <- sum(MK_2004$sum)
MK_2004_merge <- data.frame(MK_2004_sum)

MK_2004_merge$Years <- "2004"
colnames(MK_2004_merge) <- c("Biomass","Year")


MK_2005 <- filter(MK, Year == "2005")


MK_2005_sum <- sum(MK_2005$sum)
MK_2005_merge <- data.frame(MK_2005_sum)

MK_2005_merge$Years <- "2005"
colnames(MK_2005_merge) <- c("Biomass","Year")




MK_2006 <- filter(MK, Year == "2006")


MK_2006_sum <- sum(MK_2006$sum)
MK_2006_merge <- data.frame(MK_2006_sum)

MK_2006_merge$Years <- "2006"
colnames(MK_2006_merge) <- c("Biomass","Year")


MK_2007 <- filter(MK, Year == "2007")


MK_2007_sum <- sum(MK_2007$sum)
MK_2007_merge <- data.frame(MK_2007_sum)

MK_2007_merge$Years <- "2007"
colnames(MK_2007_merge) <- c("Biomass","Year")



MK_2008 <- filter(MK, Year == "2008")


MK_2008_sum <- sum(MK_2008$sum)
MK_2008_merge <- data.frame(MK_2008_sum)

MK_2008_merge$Years <- "2008"
colnames(MK_2008_merge) <- c("Biomass","Year")


MK_2009 <- filter(MK, Year == "2009")


MK_2009_sum <- sum(MK_2009$sum)
MK_2009_merge <- data.frame(MK_2009_sum)

MK_2009_merge$Years <- "2009"
colnames(MK_2009_merge) <- c("Biomass","Year")



MK_2010 <- filter(MK, Year == "2010")


MK_2010_sum <- sum(MK_2010$sum)
MK_2010_merge <- data.frame(MK_2010_sum)

MK_2010_merge$Years <- "2010"
colnames(MK_2010_merge) <- c("Biomass","Year")


MK_2011 <- filter(MK, Year == "2011")


MK_2011_sum <- sum(MK_2011$sum)
MK_2011_merge <- data.frame(MK_2011_sum)

MK_2011_merge$Years <- "2011"
colnames(MK_2011_merge) <- c("Biomass","Year")




MK_2012 <- filter(MK, Year == "2012")


MK_2012_sum <- sum(MK_2012$sum)
MK_2012_merge <- data.frame(MK_2012_sum)

MK_2012_merge$Years <- "2012"
colnames(MK_2012_merge) <- c("Biomass","Year")



MK_2014 <- filter(MK, Year == "2014")


MK_2014_sum <- sum(MK_2014$sum)
MK_2014_merge <- data.frame(MK_2014_sum)

MK_2014_merge$Years <- "2014"
colnames(MK_2014_merge) <- c("Biomass","Year")


MK_2016 <- filter(MK, Year == "2016")


MK_2016_sum <- sum(MK_2016$sum)
MK_2016_merge <- data.frame(MK_2016_sum)

MK_2016_merge$Years <- "2016"
colnames(MK_2016_merge) <- c("Biomass","Year")


MK_2018 <- filter(MK, Year == "2018")


MK_2018_sum <- sum(MK_2018$sum)
MK_2018_merge <- data.frame(MK_2018_sum)

MK_2018_merge$Years <- "2018"
colnames(MK_2018_merge) <- c("Biomass","Year")




MK_CHI <- rbind(MK_1999_merge,MK_2000_merge,MK_2001_merge,MK_2002_merge,MK_2003_merge,MK_2004_merge,MK_2005_merge,MK_2006_merge,MK_2007_merge,MK_2008_merge,MK_2009_merge,MK_2010_merge,MK_2011_merge,MK_2012_merge,MK_2014_merge,MK_2016_merge,MK_2018_merge)

MK_CHI_test <- MK_CHI$Biomass/max(MK_CHI$Biomass)
MK_CHI_all <- data.frame(MK_CHI_test)

MK_CHI_all$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016","2018")
colnames(MK_CHI_all) <- c("Biomass","Year")

MK_CHI_all_percent <- (100*MK_CHI_all$Biomass)
MK_CHI_percent <- data.frame(MK_CHI_all_percent)
MK_CHI_percent$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016","2018")
colnames(MK_CHI_percent) <- c("Biomass","Year")


MK_CHI_percent <- MK_CHI_percent %>%
  mutate_if(is.numeric,round,digits = 0)



CREMP_MK <- read_csv("C:/Users/cestes/Documents/Spring_2020/1996_2017/Middle_Keys_averages.csv")

CREMP_MK <- CREMP_MK %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_MK_match <- filter(CREMP_MK, Year %in% c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016"))

CREMP_MK_coral <- CREMP_MK_match$`Stony Coral`/max(CREMP_MK_match$`Stony Coral`)
CREMP_MK_coral <- data.frame(CREMP_MK_coral)
CREMP_MK_coral <- (100*CREMP_MK_coral)
CREMP_MK_coral <- CREMP_MK_coral %>%
  mutate_if(is.numeric,round,digits = 0)

CREMP_MK_coral$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")
colnames(CREMP_MK_coral)<- c("Stony Coral","Year")



CREMP_MK_macro <- CREMP_MK_match$Macroalgae/max(CREMP_MK_match$Macroalgae)
CREMP_MK_macro <- data.frame(CREMP_MK_macro)
CREMP_MK_macro <- (100*CREMP_MK_macro)
CREMP_MK_macro <- CREMP_MK_macro %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_MK_macro$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")
colnames(CREMP_MK_macro)<- c("Macroalgae","Year")



CREMP_RVC_MK <- full_join(CREMP_MK_coral,CREMP_MK_macro)
CREMP_RVC_MK_plot <- full_join(CREMP_RVC_MK, MK_CHI_percent)
export(CREMP_RVC_MK_plot,"MK/CREMP_RVC_CHI_MK.csv")



CREMP_RVC_MK_plot2 <- read.delim("MK/CREMP_RVC_CHI_MK.csv", sep=",")


CREMP_RVC_MK_plot3 <- melt(CREMP_RVC_MK_plot2, id.vars = "Year")




ggplot(CREMP_RVC_MK_plot3, aes(Year, value, fill =variable))+
  ggtitle("Coral Health Index", subtitle = "Middle Keys")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(CREMP_RVC_MK_plot3$Year), max(CREMP_RVC_MK_plot3$Year), by = 2),1))+
  #scale_color_manual(values=c( "indianred1","dodgerblue","forestgreen",))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/CHI_regions")

ggsave("MK.png", width = 8, height = 4)





### UK

setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF")

UK <- read_csv("UK/UK_reef_biomass_data.csv")

UK_1999 <- filter(UK, Year == "1999")


UK_1999_sum <- sum(UK_1999$sum)
UK_1999_merge <- data.frame(UK_1999_sum)

UK_1999_merge$Years <- "1999"
colnames(UK_1999_merge) <- c("Biomass","Year")


UK_2000 <- filter(UK, Year == "2000")


UK_2000_sum <- sum(UK_2000$sum)
UK_2000_merge <- data.frame(UK_2000_sum)

UK_2000_merge$Years <- "2000"
colnames(UK_2000_merge) <- c("Biomass","Year")

UK_2001 <- filter(UK, Year == "2001")


UK_2001_sum <- sum(UK_2001$sum)
UK_2001_merge <- data.frame(UK_2001_sum)

UK_2001_merge$Years <- "2001"
colnames(UK_2001_merge) <- c("Biomass","Year")


UK_2002 <- filter(UK, Year == "2002")


UK_2002_sum <- sum(UK_2002$sum)
UK_2002_merge <- data.frame(UK_2002_sum)

UK_2002_merge$Years <- "2002"
colnames(UK_2002_merge) <- c("Biomass","Year")


UK_2003 <- filter(UK, Year == "2003")


UK_2003_sum <- sum(UK_2003$sum)
UK_2003_merge <- data.frame(UK_2003_sum)

UK_2003_merge$Years <- "2003"
colnames(UK_2003_merge) <- c("Biomass","Year")



UK_2004 <- filter(UK, Year == "2004")


UK_2004_sum <- sum(UK_2004$sum)
UK_2004_merge <- data.frame(UK_2004_sum)

UK_2004_merge$Years <- "2004"
colnames(UK_2004_merge) <- c("Biomass","Year")


UK_2005 <- filter(UK, Year == "2005")


UK_2005_sum <- sum(UK_2005$sum)
UK_2005_merge <- data.frame(UK_2005_sum)

UK_2005_merge$Years <- "2005"
colnames(UK_2005_merge) <- c("Biomass","Year")




UK_2006 <- filter(UK, Year == "2006")


UK_2006_sum <- sum(UK_2006$sum)
UK_2006_merge <- data.frame(UK_2006_sum)

UK_2006_merge$Years <- "2006"
colnames(UK_2006_merge) <- c("Biomass","Year")


UK_2007 <- filter(UK, Year == "2007")


UK_2007_sum <- sum(UK_2007$sum)
UK_2007_merge <- data.frame(UK_2007_sum)

UK_2007_merge$Years <- "2007"
colnames(UK_2007_merge) <- c("Biomass","Year")



UK_2008 <- filter(UK, Year == "2008")


UK_2008_sum <- sum(UK_2008$sum)
UK_2008_merge <- data.frame(UK_2008_sum)

UK_2008_merge$Years <- "2008"
colnames(UK_2008_merge) <- c("Biomass","Year")


UK_2009 <- filter(UK, Year == "2009")


UK_2009_sum <- sum(UK_2009$sum)
UK_2009_merge <- data.frame(UK_2009_sum)

UK_2009_merge$Years <- "2009"
colnames(UK_2009_merge) <- c("Biomass","Year")



UK_2010 <- filter(UK, Year == "2010")


UK_2010_sum <- sum(UK_2010$sum)
UK_2010_merge <- data.frame(UK_2010_sum)

UK_2010_merge$Years <- "2010"
colnames(UK_2010_merge) <- c("Biomass","Year")


UK_2011 <- filter(UK, Year == "2011")


UK_2011_sum <- sum(UK_2011$sum)
UK_2011_merge <- data.frame(UK_2011_sum)

UK_2011_merge$Years <- "2011"
colnames(UK_2011_merge) <- c("Biomass","Year")




UK_2012 <- filter(UK, Year == "2012")


UK_2012_sum <- sum(UK_2012$sum)
UK_2012_merge <- data.frame(UK_2012_sum)

UK_2012_merge$Years <- "2012"
colnames(UK_2012_merge) <- c("Biomass","Year")



UK_2014 <- filter(UK, Year == "2014")


UK_2014_sum <- sum(UK_2014$sum)
UK_2014_merge <- data.frame(UK_2014_sum)

UK_2014_merge$Years <- "2014"
colnames(UK_2014_merge) <- c("Biomass","Year")


UK_2016 <- filter(UK, Year == "2016")


UK_2016_sum <- sum(UK_2016$sum)
UK_2016_merge <- data.frame(UK_2016_sum)

UK_2016_merge$Years <- "2016"
colnames(UK_2016_merge) <- c("Biomass","Year")


UK_2018 <- filter(UK, Year == "2018")


UK_2018_sum <- sum(UK_2018$sum)
UK_2018_merge <- data.frame(UK_2018_sum)

UK_2018_merge$Years <- "2018"
colnames(UK_2018_merge) <- c("Biomass","Year")




UK_CHI <- rbind(UK_1999_merge,UK_2000_merge,UK_2001_merge,UK_2002_merge,UK_2003_merge,UK_2004_merge,UK_2005_merge,UK_2006_merge,UK_2007_merge,UK_2008_merge,UK_2009_merge,UK_2010_merge,UK_2011_merge,UK_2012_merge,UK_2014_merge,UK_2016_merge,UK_2018_merge)

UK_CHI_test <- UK_CHI$Biomass/max(UK_CHI$Biomass)
UK_CHI_all <- data.frame(UK_CHI_test)

UK_CHI_all$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016","2018")
colnames(UK_CHI_all) <- c("Biomass","Year")

UK_CHI_all_percent <- (100*UK_CHI_all$Biomass)
UK_CHI_percent <- data.frame(UK_CHI_all_percent)
UK_CHI_percent$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016","2018")
colnames(UK_CHI_percent) <- c("Biomass","Year")


UK_CHI_percent <- UK_CHI_percent %>%
  mutate_if(is.numeric,round,digits = 0)



CREMP_UK <- read_csv("C:/Users/cestes/Documents/Spring_2020/1996_2017/Upper_Keys_averages.csv")

CREMP_UK <- CREMP_UK %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_UK_match <- filter(CREMP_UK, Year %in% c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016"))

CREMP_UK_coral <- CREMP_UK_match$`Stony Coral`/max(CREMP_UK_match$`Stony Coral`)
CREMP_UK_coral <- data.frame(CREMP_UK_coral)
CREMP_UK_coral <- (100*CREMP_UK_coral)
CREMP_UK_coral <- CREMP_UK_coral %>%
  mutate_if(is.numeric,round,digits = 0)

CREMP_UK_coral$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")
colnames(CREMP_UK_coral)<- c("Stony Coral","Year")



CREMP_UK_macro <- CREMP_UK_match$Macroalgae/max(CREMP_UK_match$Macroalgae)
CREMP_UK_macro <- data.frame(CREMP_UK_macro)
CREMP_UK_macro <- (100*CREMP_UK_macro)
CREMP_UK_macro <- CREMP_UK_macro %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_UK_macro$Years <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")
colnames(CREMP_UK_macro)<- c("Macroalgae","Year")



CREMP_RVC_UK <- full_join(CREMP_UK_coral,CREMP_UK_macro)
CREMP_RVC_UK_plot <- full_join(CREMP_RVC_UK, UK_CHI_percent)
export(CREMP_RVC_UK_plot,"UK/CREMP_RVC_CHI_UK.csv")



CREMP_RVC_UK_plot2 <- read.delim("UK/CREMP_RVC_CHI_UK.csv", sep=",")


CREMP_RVC_UK_plot3 <- melt(CREMP_RVC_UK_plot2, id.vars = "Year")




ggplot(CREMP_RVC_UK_plot3, aes(Year, value, fill =variable))+
  ggtitle("Coral Health Index", subtitle = "Upper Keys")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(CREMP_RVC_UK_plot3$Year), max(CREMP_RVC_UK_plot3$Year), by = 2),1))+
  #scale_color_manual(values=c( "indianred1","dodgerblue","forestgreen",))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/CHI_regions")

ggsave("UK.png", width = 8, height = 4)




### SEF

setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF")

SEF <- read_csv("SEF/SEF_reef_biomass_data.csv")


SEF_2013 <- filter(SEF, Year == "2013")


SEF_2013_sum <- sum(SEF_2013$sum)
SEF_2013_merge <- data.frame(SEF_2013_sum)

SEF_2013_merge$Years <- "2013"
colnames(SEF_2013_merge) <- c("Biomass","Year")



SEF_2014 <- filter(SEF, Year == "2014")


SEF_2014_sum <- sum(SEF_2014$sum)
SEF_2014_merge <- data.frame(SEF_2014_sum)

SEF_2014_merge$Years <- "2014"
colnames(SEF_2014_merge) <- c("Biomass","Year")


SEF_2015 <- filter(SEF, Year == "2015")


SEF_2015_sum <- sum(SEF_2015$sum)
SEF_2015_merge <- data.frame(SEF_2015_sum)

SEF_2015_merge$Years <- "2015"
colnames(SEF_2015_merge) <- c("Biomass","Year")


SEF_2016 <- filter(SEF, Year == "2016")


SEF_2016_sum <- sum(SEF_2016$sum)
SEF_2016_merge <- data.frame(SEF_2016_sum)

SEF_2016_merge$Years <- "2016"
colnames(SEF_2016_merge) <- c("Biomass","Year")


SEF_2018 <- filter(SEF, Year == "2018")


# SEF_2018_sum <- sum(SEF_2018$sum)
# SEF_2018_merge <- data.frame(SEF_2018_sum)
# 
# SEF_2018_merge$Years <- "2018"
# colnames(SEF_2018_merge) <- c("Biomass","Year")
# 



SEF_CHI <- rbind(SEF_2013_merge,SEF_2014_merge,SEF_2015_merge,SEF_2016_merge)

SEF_CHI_test <- SEF_CHI$Biomass/max(SEF_CHI$Biomass)
SEF_CHI_all <- data.frame(SEF_CHI_test)

SEF_CHI_all$Years <- c("2013","2014","2015","2016")
colnames(SEF_CHI_all) <- c("Biomass","Year")

SEF_CHI_all_percent <- (100*SEF_CHI_all$Biomass)
SEF_CHI_percent <- data.frame(SEF_CHI_all_percent)
SEF_CHI_percent$Years <- c("2013","2014","2015","2016")
colnames(SEF_CHI_percent) <- c("Biomass","Year")


SEF_CHI_percent <- SEF_CHI_percent %>%
  mutate_if(is.numeric,round,digits = 0)



CREMP_SEF <- read_csv("C:/Users/cestes/Documents/Spring_2020/1996_2017/SE_Florida_averages.csv")

CREMP_SEF <- CREMP_SEF %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_SEF_match <- filter(CREMP_SEF, Year %in% c("2013","2014","2015","2016"))

CREMP_SEF_coral <- CREMP_SEF_match$`Stony Coral`/max(CREMP_SEF_match$`Stony Coral`)
CREMP_SEF_coral <- data.frame(CREMP_SEF_coral)
CREMP_SEF_coral <- (100*CREMP_SEF_coral)
CREMP_SEF_coral <- CREMP_SEF_coral %>%
  mutate_if(is.numeric,round,digits = 0)

CREMP_SEF_coral$Years <- c("2013","2014","2015","2016")
colnames(CREMP_SEF_coral)<- c("Stony Coral","Year")



CREMP_SEF_macro <- CREMP_SEF_match$Macroalgae/max(CREMP_SEF_match$Macroalgae)
CREMP_SEF_macro <- data.frame(CREMP_SEF_macro)
CREMP_SEF_macro <- (100*CREMP_SEF_macro)
CREMP_SEF_macro <- CREMP_SEF_macro %>%
  mutate_if(is.numeric,round,digits = 0)


CREMP_SEF_macro$Years <- c("2013","2014","2015","2016")
colnames(CREMP_SEF_macro)<- c("Macroalgae","Year")



CREMP_RVC_SEF <- full_join(CREMP_SEF_coral,CREMP_SEF_macro)
CREMP_RVC_SEF_plot <- full_join(CREMP_RVC_SEF, SEF_CHI_percent)
export(CREMP_RVC_SEF_plot,"SEF/CREMP_RVC_CHI_SEF.csv")



CREMP_RVC_SEF_plot2 <- read.delim("SEF/CREMP_RVC_CHI_SEF.csv", sep=",")


CREMP_RVC_SEF_plot3 <- melt(CREMP_RVC_SEF_plot2, id.vars = "Year")




ggplot(CREMP_RVC_SEF_plot3, aes(Year, value, fill =variable))+
  ggtitle("Coral Health Index", subtitle = "SE Florida")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(CREMP_RVC_SEF_plot3$Year), max(CREMP_RVC_SEF_plot3$Year), by = 2),1))+
  #scale_fill_manual("Legend", variable = c("Macroalgae","Fish Biomass","Stony Coral"))+
  #scale_color_manual(values=c( "indianred1","dodgerblue","forestgreen",))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI")

setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/CHI_regions")

ggsave("SEF.png", width = 8, height = 4)

