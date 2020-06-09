

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/DT")

library(knitr)
library(tidyverse)
library(rvc)
library(vegan)
library(dygraphs)
library(grDevices)
library(RColorBrewer)

### DT first 

### GET GROWTH PARAMETERS TO ADD TO LENGTH DATA 

DT1999<- getRvcData(1999, "DRY TORT")
DT_TAX_1999 <- DT1999$taxonomic_data

###Add biomass per year in 

DTbio_1999 <- read_csv('RVC_99_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_1999 <- inner_join(DT_TAX_1999, DTbio_1999)

### Manual biomass calculation
DT_len_1999 <- DT_bio_calculation_1999$LEN
DT_A_1999 <- DT_bio_calculation_1999$WLEN_A
DT_B_1999 <- DT_bio_calculation_1999$WLEN_B
DT_bio_calculation_1999$biomass <- (DT_A_1999*(DT_len_1999*10^(DT_B_1999))/1000)

## ouput
write_csv(DT_bio_calculation_1999, 'biomass/bioDT1999_2.csv') #1999 



DT2000<- getRvcData(2000, "DRY TORT")
DT_TAX_2000 <- DT2000$taxonomic_data

###Add biomass per year in 

DTbio_2000 <- read_csv('RVC_00_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2000 <- inner_join(DT_TAX_2000, DTbio_2000)

### Manual biomass calculation
DT_len_2000 <- DT_bio_calculation_2000$LEN
DT_A_2000 <- DT_bio_calculation_2000$WLEN_A
DT_B_2000 <- DT_bio_calculation_2000$WLEN_B
DT_bio_calculation_2000$biomass <- (DT_A_2000*(DT_len_2000*10^(DT_B_2000))/1000)

## ouput
write_csv(DT_bio_calculation_2000, 'biomass/bioDT2000_2.csv') #2000 


DT2004<- getRvcData(2004, "DRY TORT")
DT_TAX_2004 <- DT2004$taxonomic_data

###Add biomass per year in 

DTbio_2004 <- read_csv('RVC_04_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2004 <- inner_join(DT_TAX_2004, DTbio_2004)

### Manual biomass calculation
DT_len_2004 <- DT_bio_calculation_2004$LEN
DT_A_2004 <- DT_bio_calculation_2004$WLEN_A
DT_B_2004 <- DT_bio_calculation_2004$WLEN_B
DT_bio_calculation_2004$biomass <- (DT_A_2004*(DT_len_2004*10^(DT_B_2004))/1000)

## ouput
write_csv(DT_bio_calculation_2004, 'biomass/bioDT2004_2.csv') #2004 


DT2006<- getRvcData(2006, "DRY TORT")
DT_TAX_2006 <- DT2006$taxonomic_data

###Add biomass per year in 

DTbio_2006 <- read_csv('RVC_06_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2006 <- inner_join(DT_TAX_2006, DTbio_2006)

### Manual biomass calculation
DT_len_2006 <- DT_bio_calculation_2006$LEN
DT_A_2006 <- DT_bio_calculation_2006$WLEN_A
DT_B_2006 <- DT_bio_calculation_2006$WLEN_B
DT_bio_calculation_2006$biomass <- (DT_A_2006*(DT_len_2006*10^(DT_B_2006))/1000)

## ouput
write_csv(DT_bio_calculation_2006, 'biomass/bioDT2006_2.csv') #2006 


DT2008<- getRvcData(2008, "DRY TORT")
DT_TAX_2008 <- DT2008$taxonomic_data

###Add biomass per year in 

DTbio_2008 <- read_csv('RVC_08_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2008 <- inner_join(DT_TAX_2008, DTbio_2008)

### Manual biomass calculation
DT_len_2008 <- DT_bio_calculation_2008$LEN
DT_A_2008 <- DT_bio_calculation_2008$WLEN_A
DT_B_2008 <- DT_bio_calculation_2008$WLEN_B
DT_bio_calculation_2008$biomass <- (DT_A_2008*(DT_len_2008*10^(DT_B_2008))/1000)

## ouput
write_csv(DT_bio_calculation_2008, 'biomass/bioDT2008_2.csv') #2008 


DT2010<- getRvcData(2010, "DRY TORT")
DT_TAX_2010 <- DT2010$taxonomic_data

###Add biomass per year in 

DTbio_2010 <- read_csv('RVC_10_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2010 <- inner_join(DT_TAX_2010, DTbio_2010)

### Manual biomass calculation
DT_len_2010 <- DT_bio_calculation_2010$LEN
DT_A_2010 <- DT_bio_calculation_2010$WLEN_A
DT_B_2010 <- DT_bio_calculation_2010$WLEN_B
DT_bio_calculation_2010$biomass <- (DT_A_2010*(DT_len_2010*10^(DT_B_2010))/1000)

## ouput
write_csv(DT_bio_calculation_2010, 'biomass/bioDT2010_2.csv') #2010 


DT2012<- getRvcData(2012, "DRY TORT")
DT_TAX_2012 <- DT2012$taxonomic_data

###Add biomass per year in 

DTbio_2012 <- read_csv('RVC_12_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2012 <- inner_join(DT_TAX_2012, DTbio_2012)

### Manual biomass calculation
DT_len_2012 <- DT_bio_calculation_2012$LEN
DT_A_2012 <- DT_bio_calculation_2012$WLEN_A
DT_B_2012 <- DT_bio_calculation_2012$WLEN_B
DT_bio_calculation_2012$biomass <- (DT_A_2012*(DT_len_2012*10^(DT_B_2012))/1000)

## ouput
write_csv(DT_bio_calculation_2012, 'biomass/bioDT2012_2.csv') #2012 


DT2014<- getRvcData(2014, "DRY TORT")
DT_TAX_2014 <- DT2014$taxonomic_data

###Add biomass per year in 

DTbio_2014 <- read_csv('RVC_14_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2014 <- inner_join(DT_TAX_2014, DTbio_2014)

### Manual biomass calculation
DT_len_2014 <- DT_bio_calculation_2014$LEN
DT_A_2014 <- DT_bio_calculation_2014$WLEN_A
DT_B_2014 <- DT_bio_calculation_2014$WLEN_B
DT_bio_calculation_2014$biomass <- (DT_A_2014*(DT_len_2014*10^(DT_B_2014))/1000)

## ouput
write_csv(DT_bio_calculation_2014, 'biomass/bioDT2014_2.csv') #2014 


DT2016<- getRvcData(2016, "DRY TORT")
DT_TAX_2016 <- DT2016$taxonomic_data

###Add biomass per year in 

DTbio_2016 <- read_csv('RVC_16_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2016 <- inner_join(DT_TAX_2016, DTbio_2016)

### Manual biomass calculation
DT_len_2016 <- DT_bio_calculation_2016$LEN
DT_A_2016 <- DT_bio_calculation_2016$WLEN_A
DT_B_2016 <- DT_bio_calculation_2016$WLEN_B
DT_bio_calculation_2016$biomass <- (DT_A_2016*(DT_len_2016*10^(DT_B_2016))/1000)

## ouput
write_csv(DT_bio_calculation_2016, 'biomass/bioDT2016_2.csv') #2016 


DT2018<- getRvcData(2018, "DRY TORT")
DT_TAX_2018 <- DT2018$taxonomic_data


DTbio_2018 <- read_csv('RVC_18_DT_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

DT_bio_calculation_2018 <- inner_join(DT_TAX_2018, DTbio_2018)

### Manual biomass calculation
DT_len_2018 <- DT_bio_calculation_2018$LEN
DT_A_2018 <- DT_bio_calculation_2018$WLEN_A
DT_B_2018 <- DT_bio_calculation_2018$WLEN_B
DT_bio_calculation_2018$biomass <- (DT_A_2018*(DT_len_2018*10^(DT_B_2018))/1000)

## ouput
write_csv(DT_bio_calculation_2018, 'biomass/bioDT2018_2.csv') #2018 






### Florida Keys Biomass (same calculation)

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/UK")

UK1999<- getRvcData(1999, "FLA KEYS")
UK_TAX_1999 <- UK1999$taxonomic_data

###Add biomass per year in 

UKbio_1999 <- read_csv('RVC_99_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_1999 <- inner_join(UK_TAX_1999, UKbio_1999)

### Manual biomass calculation
UK_len_1999 <- UK_bio_calculation_1999$LEN
UK_A_1999 <- UK_bio_calculation_1999$WLEN_A
UK_B_1999 <- UK_bio_calculation_1999$WLEN_B
UK_bio_calculation_1999$biomass <- (UK_A_1999*(UK_len_1999*10^(UK_B_1999))/1000)

## ouput
write_csv(UK_bio_calculation_1999, 'biomass/bioUK1999_2.csv') #1999 



UK2000<- getRvcData(2000, "FLA KEYS")
UK_TAX_2000 <- UK2000$taxonomic_data

###Add biomass per year in 

UKbio_2000 <- read_csv('RVC_00_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2000 <- inner_join(UK_TAX_2000, UKbio_2000)

### Manual biomass calculation
UK_len_2000 <- UK_bio_calculation_2000$LEN
UK_A_2000 <- UK_bio_calculation_2000$WLEN_A
UK_B_2000 <- UK_bio_calculation_2000$WLEN_B
UK_bio_calculation_2000$biomass <- (UK_A_2000*(UK_len_2000*10^(UK_B_2000))/1000)

## ouput
write_csv(UK_bio_calculation_2000, 'biomass/bioUK2000_2.csv') #2000 


UK2001<- getRvcData(2001, "FLA KEYS")
UK_TAX_2001 <- UK2001$taxonomic_data

###Add biomass per year in 

UKbio_2001 <- read_csv('RVC_01_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2001 <- inner_join(UK_TAX_2001, UKbio_2001)

### Manual biomass calculation
UK_len_2001 <- UK_bio_calculation_2001$LEN
UK_A_2001 <- UK_bio_calculation_2001$WLEN_A
UK_B_2001 <- UK_bio_calculation_2001$WLEN_B
UK_bio_calculation_2001$biomass <- (UK_A_2001*(UK_len_2001*10^(UK_B_2001))/1000)

## ouput
write_csv(UK_bio_calculation_2001, 'biomass/bioUK2001_2.csv') #2001


UK2002<- getRvcData(2002, "FLA KEYS")
UK_TAX_2002 <- UK2002$taxonomic_data

###Add biomass per year in 

UKbio_2002 <- read_csv('RVC_02_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2002 <- inner_join(UK_TAX_2002, UKbio_2002)

### Manual biomass calculation
UK_len_2002 <- UK_bio_calculation_2002$LEN
UK_A_2002 <- UK_bio_calculation_2002$WLEN_A
UK_B_2002 <- UK_bio_calculation_2002$WLEN_B
UK_bio_calculation_2002$biomass <- (UK_A_2002*(UK_len_2002*10^(UK_B_2002))/1000)

## ouput
write_csv(UK_bio_calculation_2002, 'biomass/bioUK2002_2.csv') #2002


UK2003<- getRvcData(2003, "FLA KEYS")
UK_TAX_2003 <- UK2003$taxonomic_data

###Add biomass per year in 

UKbio_2003 <- read_csv('RVC_03_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2003 <- inner_join(UK_TAX_2003, UKbio_2003)

### Manual biomass calculation
UK_len_2003 <- UK_bio_calculation_2003$LEN
UK_A_2003 <- UK_bio_calculation_2003$WLEN_A
UK_B_2003 <- UK_bio_calculation_2003$WLEN_B
UK_bio_calculation_2003$biomass <- (UK_A_2003*(UK_len_2003*10^(UK_B_2003))/1000)

## ouput
write_csv(UK_bio_calculation_2003, 'biomass/bioUK2003_2.csv') #2003


UK2004<- getRvcData(2004, "FLA KEYS")
UK_TAX_2004 <- UK2004$taxonomic_data

###Add biomass per year in 

UKbio_2004 <- read_csv('RVC_04_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2004 <- inner_join(UK_TAX_2004, UKbio_2004)

### Manual biomass calculation
UK_len_2004 <- UK_bio_calculation_2004$LEN
UK_A_2004 <- UK_bio_calculation_2004$WLEN_A
UK_B_2004 <- UK_bio_calculation_2004$WLEN_B
UK_bio_calculation_2004$biomass <- (UK_A_2004*(UK_len_2004*10^(UK_B_2004))/1000)

## ouput
write_csv(UK_bio_calculation_2004, 'biomass/bioUK2004_2.csv') #2004 


UK2005<- getRvcData(2005, "FLA KEYS")
UK_TAX_2005 <- UK2005$taxonomic_data

###Add biomass per year in 

UKbio_2005 <- read_csv('RVC_05_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2005 <- inner_join(UK_TAX_2005, UKbio_2005)

### Manual biomass calculation
UK_len_2005 <- UK_bio_calculation_2005$LEN
UK_A_2005 <- UK_bio_calculation_2005$WLEN_A
UK_B_2005 <- UK_bio_calculation_2005$WLEN_B
UK_bio_calculation_2005$biomass <- (UK_A_2005*(UK_len_2005*10^(UK_B_2005))/1000)

## ouput
write_csv(UK_bio_calculation_2005, 'biomass/bioUK2005_2.csv') #2005


UK2006<- getRvcData(2006, "FLA KEYS")
UK_TAX_2006 <- UK2006$taxonomic_data

###Add biomass per year in 

UKbio_2006 <- read_csv('RVC_06_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2006 <- inner_join(UK_TAX_2006, UKbio_2006)

### Manual biomass calculation
UK_len_2006 <- UK_bio_calculation_2006$LEN
UK_A_2006 <- UK_bio_calculation_2006$WLEN_A
UK_B_2006 <- UK_bio_calculation_2006$WLEN_B
UK_bio_calculation_2006$biomass <- (UK_A_2006*(UK_len_2006*10^(UK_B_2006))/1000)

## ouput
write_csv(UK_bio_calculation_2006, 'biomass/bioUK2006_2.csv') #2006


UK2007<- getRvcData(2007, "FLA KEYS")
UK_TAX_2007 <- UK2007$taxonomic_data

###Add biomass per year in 

UKbio_2007 <- read_csv('RVC_07_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2007 <- inner_join(UK_TAX_2007, UKbio_2007)

### Manual biomass calculation
UK_len_2007 <- UK_bio_calculation_2007$LEN
UK_A_2007 <- UK_bio_calculation_2007$WLEN_A
UK_B_2007 <- UK_bio_calculation_2007$WLEN_B
UK_bio_calculation_2007$biomass <- (UK_A_2007*(UK_len_2007*10^(UK_B_2007))/1000)

## ouput
write_csv(UK_bio_calculation_2007, 'biomass/bioUK2007_2.csv') #2007


UK2008<- getRvcData(2008, "FLA KEYS")
UK_TAX_2008 <- UK2008$taxonomic_data

###Add biomass per year in 

UKbio_2008 <- read_csv('RVC_08_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2008 <- inner_join(UK_TAX_2008, UKbio_2008)

### Manual biomass calculation
UK_len_2008 <- UK_bio_calculation_2008$LEN
UK_A_2008 <- UK_bio_calculation_2008$WLEN_A
UK_B_2008 <- UK_bio_calculation_2008$WLEN_B
UK_bio_calculation_2008$biomass <- (UK_A_2008*(UK_len_2008*10^(UK_B_2008))/1000)

## ouput
write_csv(UK_bio_calculation_2008, 'biomass/bioUK2008_2.csv') #2008


UK2009<- getRvcData(2009, "FLA KEYS")
UK_TAX_2009 <- UK2009$taxonomic_data

###Add biomass per year in 

UKbio_2009 <- read_csv('RVC_09_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2009 <- inner_join(UK_TAX_2009, UKbio_2009)

### Manual biomass calculation
UK_len_2009 <- UK_bio_calculation_2009$LEN
UK_A_2009 <- UK_bio_calculation_2009$WLEN_A
UK_B_2009 <- UK_bio_calculation_2009$WLEN_B
UK_bio_calculation_2009$biomass <- (UK_A_2009*(UK_len_2009*10^(UK_B_2009))/1000)

## ouput
write_csv(UK_bio_calculation_2009, 'biomass/bioUK2009_2.csv') #2009


UK2010<- getRvcData(2010, "FLA KEYS")
UK_TAX_2010 <- UK2010$taxonomic_data

###Add biomass per year in 

UKbio_2010 <- read_csv('RVC_10_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2010 <- inner_join(UK_TAX_2010, UKbio_2010)

### Manual biomass calculation
UK_len_2010 <- UK_bio_calculation_2010$LEN
UK_A_2010 <- UK_bio_calculation_2010$WLEN_A
UK_B_2010 <- UK_bio_calculation_2010$WLEN_B
UK_bio_calculation_2010$biomass <- (UK_A_2010*(UK_len_2010*10^(UK_B_2010))/1000)

## ouput
write_csv(UK_bio_calculation_2010, 'biomass/bioUK2010_2.csv') #2010 


UK2011<- getRvcData(2011, "FLA KEYS")
UK_TAX_2011 <- UK2011$taxonomic_data

###Add biomass per year in 

UKbio_2011 <- read_csv('RVC_11_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2011 <- inner_join(UK_TAX_2011, UKbio_2011)

### Manual biomass calculation
UK_len_2011 <- UK_bio_calculation_2011$LEN
UK_A_2011 <- UK_bio_calculation_2011$WLEN_A
UK_B_2011 <- UK_bio_calculation_2011$WLEN_B
UK_bio_calculation_2011$biomass <- (UK_A_2011*(UK_len_2011*10^(UK_B_2011))/1000)

## ouput
write_csv(UK_bio_calculation_2011, 'biomass/bioUK2011_2.csv') #2011


UK2012<- getRvcData(2012, "FLA KEYS")
UK_TAX_2012 <- UK2012$taxonomic_data

###Add biomass per year in 

UKbio_2012 <- read_csv('RVC_12_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2012 <- inner_join(UK_TAX_2012, UKbio_2012)

### Manual biomass calculation
UK_len_2012 <- UK_bio_calculation_2012$LEN
UK_A_2012 <- UK_bio_calculation_2012$WLEN_A
UK_B_2012 <- UK_bio_calculation_2012$WLEN_B
UK_bio_calculation_2012$biomass <- (UK_A_2012*(UK_len_2012*10^(UK_B_2012))/1000)

## ouput
write_csv(UK_bio_calculation_2012, 'biomass/bioUK2012_2.csv') #2012 


UK2014<- getRvcData(2014, "FLA KEYS")
UK_TAX_2014 <- UK2014$taxonomic_data

###Add biomass per year in 

UKbio_2014 <- read_csv('RVC_14_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2014 <- inner_join(UK_TAX_2014, UKbio_2014)

### Manual biomass calculation
UK_len_2014 <- UK_bio_calculation_2014$LEN
UK_A_2014 <- UK_bio_calculation_2014$WLEN_A
UK_B_2014 <- UK_bio_calculation_2014$WLEN_B
UK_bio_calculation_2014$biomass <- (UK_A_2014*(UK_len_2014*10^(UK_B_2014))/1000)

## ouput
write_csv(UK_bio_calculation_2014, 'biomass/bioUK2014_2.csv') #2014 


UK2016<- getRvcData(2016, "FLA KEYS")
UK_TAX_2016 <- UK2016$taxonomic_data

###Add biomass per year in 

UKbio_2016 <- read_csv('RVC_16_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2016 <- inner_join(UK_TAX_2016, UKbio_2016)

### Manual biomass calculation
UK_len_2016 <- UK_bio_calculation_2016$LEN
UK_A_2016 <- UK_bio_calculation_2016$WLEN_A
UK_B_2016 <- UK_bio_calculation_2016$WLEN_B
UK_bio_calculation_2016$biomass <- (UK_A_2016*(UK_len_2016*10^(UK_B_2016))/1000)

## ouput
write_csv(UK_bio_calculation_2016, 'biomass/bioUK2016_2.csv') #2016 


UK2018<- getRvcData(2018, "FLA KEYS")
UK_TAX_2018 <- UK2018$taxonomic_data

###Add biomass per year in 

UKbio_2018 <- read_csv('RVC_18_UK_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

UK_bio_calculation_2018 <- inner_join(UK_TAX_2018, UKbio_2018)

### Manual biomass calculation
UK_len_2018 <- UK_bio_calculation_2018$LEN
UK_A_2018 <- UK_bio_calculation_2018$WLEN_A
UK_B_2018 <- UK_bio_calculation_2018$WLEN_B
UK_bio_calculation_2018$biomass <- (UK_A_2018*(UK_len_2018*10^(UK_B_2018))/1000)

## ouput
write_csv(UK_bio_calculation_2018, 'biomass/bioUK2018_2.csv') #2018








#### SE Florida biomass (same calculation)
setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/SE_F")


SEF2013<- getRvcData(2013, "SEFCRI")
SEF_TAX_2013 <- SEF2013$taxonomic_data

###Add biomass per year in 

SEFbio_2013 <- read_csv('RVC_13_SEF_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

SEF_bio_calculation_2013 <- inner_join(SEF_TAX_2013, SEFbio_2013)

### Manual biomass calculation
SEF_len_2013 <- SEF_bio_calculation_2013$LEN
SEF_A_2013 <- SEF_bio_calculation_2013$WLEN_A
SEF_B_2013 <- SEF_bio_calculation_2013$WLEN_B
SEF_bio_calculation_2013$biomass <- (SEF_A_2013*(SEF_len_2013*10^(SEF_B_2013))/1000)

## ouput
write_csv(SEF_bio_calculation_2013, 'biomass/bioSEF2013_2.csv') #2013 


SEF2014<- getRvcData(2014, "SEFCRI")
SEF_TAX_2014 <- SEF2014$taxonomic_data

###Add biomass per year in 

SEFbio_2014 <- read_csv('RVC_14_SEF_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

SEF_bio_calculation_2014 <- inner_join(SEF_TAX_2014, SEFbio_2014)

### Manual biomass calculation
SEF_len_2014 <- SEF_bio_calculation_2014$LEN
SEF_A_2014 <- SEF_bio_calculation_2014$WLEN_A
SEF_B_2014 <- SEF_bio_calculation_2014$WLEN_B
SEF_bio_calculation_2014$biomass <- (SEF_A_2014*(SEF_len_2014*10^(SEF_B_2014))/1000)

## ouput
write_csv(SEF_bio_calculation_2014, 'biomass/bioSEF2014_2.csv') #2014 

SEF2015<- getRvcData(2015, "SEFCRI")
SEF_TAX_2015 <- SEF2015$taxonomic_data

###Add biomass per year in 

SEFbio_2015 <- read_csv('RVC_15_SEF_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

SEF_bio_calculation_2015 <- inner_join(SEF_TAX_2015, SEFbio_2015)

### Manual biomass calculation
SEF_len_2015 <- SEF_bio_calculation_2015$LEN
SEF_A_2015 <- SEF_bio_calculation_2015$WLEN_A
SEF_B_2015 <- SEF_bio_calculation_2015$WLEN_B
SEF_bio_calculation_2015$biomass <- (SEF_A_2015*(SEF_len_2015*10^(SEF_B_2015))/1000)

## ouput
write_csv(SEF_bio_calculation_2015, 'biomass/bioSEF2015_2.csv') #2015 


SEF2016<- getRvcData(2016, "SEFCRI")
SEF_TAX_2016 <- SEF2016$taxonomic_data

###Add biomass per year in 

SEFbio_2016 <- read_csv('RVC_16_SEF_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

SEF_bio_calculation_2016 <- inner_join(SEF_TAX_2016, SEFbio_2016)

### Manual biomass calculation
SEF_len_2016 <- SEF_bio_calculation_2016$LEN
SEF_A_2016 <- SEF_bio_calculation_2016$WLEN_A
SEF_B_2016 <- SEF_bio_calculation_2016$WLEN_B
SEF_bio_calculation_2016$biomass <- (SEF_A_2016*(SEF_len_2016*10^(SEF_B_2016))/1000)

## ouput
write_csv(SEF_bio_calculation_2016, 'biomass/bioSEF2016_2.csv') #2016 


SEF2018<- getRvcData(2018, "SEFCRI")
SEF_TAX_2018 <- SEF2018$taxonomic_data

###Add biomass per year in 

SEFbio_2018 <- read_csv('RVC_18_SEF_analyze.csv')

#### Combine biomass with taxonomic data to keep lat and lon with output

SEF_bio_calculation_2018 <- inner_join(SEF_TAX_2018, SEFbio_2018)

### Manual biomass calculation
SEF_len_2018 <- SEF_bio_calculation_2018$LEN
SEF_A_2018 <- SEF_bio_calculation_2018$WLEN_A
SEF_B_2018 <- SEF_bio_calculation_2018$WLEN_B
SEF_bio_calculation_2018$biomass <- (SEF_A_2018*(SEF_len_2018*10^(SEF_B_2018))/1000)

## ouput
write_csv(SEF_bio_calculation_2018, 'biomass/bioSEF2018_2.csv') #2018

