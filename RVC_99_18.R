


library(rio)
library("magrittr")
library(knitr)
library(tidyverse)
library(rvc)
library(vegan)
library(dygraphs)
library(grDevices)
library(RColorBrewer)



```{r call RVC data}
#rds files to read 
RVCdata_FK_rds = 'RVCdata_FK.rds'
#rvc94_16_csv = 'big_csv/rvc94_16.csv'
if (!all(file.exists(RVCdata_FK_rds))){
  RVCdata_FK <- getRvcData(1999:2018, "FLA KEYS")
  write_rds(RVCdata_FK, 'RVCdata_FK.rds')
} else{ #read data
  RVCdata_FK = read_rds('RVCdata_FK.rds')}


setwd("C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv")


```{r Forage fish}
forage_fk_abun_csv     = "trophic_groups/abundance/forage_fk_abun.csv"        #abundance
forage_fk_den_csv      = "trophic_groups/density/forage_fk_den.csv"           #density
forage_fk_bio_csv      = "trophic_groups/biomass/forage_fk_bio_merged.csv"    #biomass 
forage_fk_diversity_csv= "trophic_groups/diversity/forage_fk_diversity.csv"   #diversity 
if (!all(
  file.exists(
    forage_fk_abun_csv, forage_fk_den_csv, forage_fk_bio_csv,forage_fk_diversity_csv))){
  
  forage_fish_spp_list= c("HYP HARR", "ATH STIP", "JEN SPE.", "HAR JAGU", "ANC LYOL", "INE VITT", "HEM BRAS", "SAR AURI", "HAR HUME", "CHR ATHE")
  #abundance
  forage_fk_abun = getDomainAbundance(RVCdata_FK, forage_fish_spp_list, merge_protected = F)
  write_csv(forage_fk_abun, "trophic_groups/abundance/forage_fk_abun.csv")
  
  #density
  forage_fk_den = getDomainDensity(RVCdata_FK, forage_fish_spp_list, merge_protected = F)
  write_csv(forage_fk_den, "trophic_groups/density/forage_fk_den.csv")
  
  #biomass
  forage_fk_bio = getDomainBiomass(RVCdata_FK, forage_fish_spp_list, RVCdata_FK$taxonomic_data)
  write_csv(forage_fk_bio, "trophic_groups/biomass/forage_fk_bio_merged.csv")
  
  forage_fk_abundance = forage_fk_abun %>% 
    select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
    group_by(YEAR, protected_status,abundance) %>% #48 groups 
    nest(-YEAR, -protected_status) %>%  
    mutate(
      data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
  
  forage_fk_abundance$data <- NULL
  forage_fk_abundance$data_wide <- NULL
  
  
  forage_fk_diversity <- forage_fk_abundance
  export (forage_fk_diversity,"trophic_groups/diversity/forage_fk_diversity.csv" )
  
  
##### GROUPER
  
  
  
  grouper_fk_abun_csv       = "trophic_groups/abundance/grouper_fk_abun.csv"
  grouper_fk_den_csv        = "trophic_groups/density/grouper_fk_den.csv"
  grouper_fk_bio_csv        = "trophic_groups/biomass/grouper_fk_bio_merged.csv"
  grouper_fk_diversity_csv  = "trophic_groups/diversity/grouper_fk_diversity.csv"
  if(!all(file.exists(grouper_fk_abun_csv,grouper_fk_den_csv,grouper_fk_bio_csv, grouper_fk_diversity_csv))){
    
    grouper_spp_list= c("CEP CRUE", "MYC BONA", "EPI MORI", "EPI STRI", "EPI ITAJ", "CEP FULV", "MYC MICR", "MYC PHEN", "MYC VENE", "MYC INTE", "MYC TIGR", "EPI FLAV", "DER INER", "SRR SPE.", "Epi nive", "Myc acut")
    
    #abundance
    grouper_fk_abun = getDomainAbundance(RVCdata_FK, grouper_spp_list, merge_protected = F)
    write_csv(grouper_fk_abun, "trophic_groups/abundance/grouper_fk_abun.csv")
    
    #density
    grouper_fk_den = getDomainDensity(RVCdata_FK, grouper_spp_list)
    write_csv(grouper_fk_den, "trophic_groups/density/grouper_fk_den.csv")
    
    #biomass
    grouper_fk_bio = getDomainBiomass(RVCdata_FK, grouper_spp_list, RVCdata_FK$taxonomic_data)
    write_csv(grouper_fk_bio, "trophic_groups/biomass/grouper_fk_bio_merged.csv")
    
    #diversity metrics 
    grouper_fk_abundance = grouper_fk_abun %>% 
      select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
      group_by(YEAR, protected_status,abundance) %>% #48 groups 
      nest(-YEAR, -protected_status) %>%  
      mutate(
        data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
    
    grouper_fk_abundance$data <- NULL
    grouper_fk_abundance$data_wide <- NULL
    
    
    grouper_fk_diversity <- grouper_fk_abundance
    export (grouper_fk_diversity,"trophic_groups/diversity/grouper_fk_diversity.csv" )
    


```{r Grunts}
    grunt_fk_abun_csv     = "trophic_groups/abundance/grunt_fk_abun.csv"
    grunt_fk_den_csv      = "trophic_groups/density/grunt_fk_den.csv"
    grunt_fk_bio_csv      = "trophic_groups/biomass/grunt_fk_bio_merged.csv"
    grunt_fk_diversity_csv= "trophic_groups/diversity/grunt_fk_diversity.csv"
    if(!all(file.exists(grunt_fk_abun_csv,grunt_fk_den_csv,grunt_fk_bio_csv, grunt_fk_diversity_csv))){
      
      grunt_spp_list = c("HAE SCIU", "HAE AURO", "HAE PLUM", "HAE SPE.", "HAE FLAV", "HAE CHRY", "ANI VIRG","HAE MELA", "HAE CARB", "HAE PARR", "HAE STRI", "HAE MACR", "ANI SURI", "HAE ALBU")
      
      #abundance
      grunt_fk_abun = getDomainAbundance(RVCdata_FK, grunt_spp_list, merge_protected = F)
      write_csv(grunt_fk_abun, "trophic_groups/abundance/grunt_fk_abun.csv")
      
      #density
      grunt_fk_den = getDomainDensity(RVCdata_FK, grunt_spp_list, merge_protected = F)
      write_csv(grunt_fk_den, "trophic_groups/density/grunt_fk_den.csv")
      
      #biomass
      grunt_fk_bio = getDomainBiomass(RVCdata_FK, grunt_spp_list, RVCdata_FK$taxonomic_data)
      write_csv(grunt_fk_bio, "trophic_groups/biomass/grunt_fk_bio_merged.csv")
      
      #diversity metrics 
      grunt_fk_abundance = grunt_fk_abun %>% 
        select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
        group_by(YEAR, protected_status,abundance) %>% #48 groups 
        nest(-YEAR, -protected_status) %>%  
        mutate(
          data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
      
      grunt_fk_abundance$data <- NULL
      grunt_fk_abundance$data_wide <- NULL
      
      
      grunt_fk_diversity <- grunt_fk_abundance
      export (grunt_fk_diversity,"trophic_groups/diversity/grunt_fk_diversity.csv" )
      
      ```{r Higher Level Reef Fish}
      higher_reef_fk_abun_csv     = "trophic_groups/abundance/higher_reef_fk_abun.csv"
      higher_reef_fk_den_csv      = "trophic_groups/density/higher_reef_fk_den.csv"
      higher_reef_fk_bio_csv      = "trophic_groups/biomass/higher_reef_fk_bio_merged.csv"
      higher_reef_fk_diversity_csv= "trophic_groups/diversity/higher_reef_fk_diversity.csv"
      if(!all(file.exists(higher_reef_fk_abun_csv,higher_reef_fk_den_csv,higher_reef_fk_bio_csv,higher_reef_fk_diversity_csv))){
        
        higher_reef_spp_list = c("THA BIFA","STE PART","GYM MORI","PRI AREN","ABU SAXA","HAL BIVI","HAL GARN","HAL MACU","CHR MULT","CLE PARR","STE PLAN","CHR CYAN","MUL MART","MIC CHRY","STE ADUS","CHA CAPI","STE VARI","PEM SCHO","POM ARCU","CAN ROST","CHA OCEL","PSE MACU","HOL TRIC","CHR SCOT","HAL RADI","CAL CALA","CHA SEDE","XYR SPLE","STE LEUC","HOL CILI","POM PARU","AUL MACU","CHA STRI","OPI AURI","HAL POEY","CHR INSO","HOL ADSC","ODO DENT","STE DIEN","HOL BERM","CHA FABE","XYR MART","GER CINE","HOL RUFU","LAC TRIQ","PAR ACUM","ALU SCRI","BAL CAPR","MAL PLUM","CAN SUFF","CAN PULL","HET CRUE","OGC SPE.","XYR SPE.","ACA QUAD","CAL BAJO","MON TUCK","SPH SPEN","ARC RHOM","DIO HOLO","LAC BICA","XYR NOVA","BAL VETU","DIO HYST","HAL CYAN","GYM FUNE","DIP HOLB","APO PSEU","HOL TOWN","EQU PUNC","LAC TRIG","HAL PICT","MYR JACO","SAR VEXI","SYN INTE","HAL CAUD","AMB PINO","GYM MILI","ALU SCHO","ACA POLY","CAL PROR","CHI SCHO","HET LONG","SCO PLUM","CHR ENCH","CAL SPE.","APO MACU","CAN MACR","PAR UMBR","LAG RHOM","EQU LANC","CAL PENN","STE HISP","APO BINO","NEO MARI","ARC PROB","CHI ANTE","APO TOWN","DOR MEGA","REM REMO","OPI WHIT","CEN ARGI","SYN FOET","AST SPE.","CAR HIPP","SAR CORU","OPI MACR","GYM VICI","DIP ARGE","PAG PAGR","PAR BAIR","BOT LUNA","EUC ARGE","PRO ACUL","LAB GOBI","FIS TABA","ALU SPE.","GRA LORE","MON CILI","ECH NEUC","ALU MONO","BOT OCEL","BAL SPE.","PAR ALBI","STE SPE.","APO QUAD","ENC NIGR","GYM SAXI","OPI SPE.","ELO SAUR","MAN BIRO","APO AURO","SPH TEST","CAL NODO","DIO SPE.","SCO CARI","LAB FILA","AHL EGMO","ANT OCEL","AST GUTT","LAB SPE.","LAB SPE.","MUR RETI","AST STEL","EUC GULA","HOL SPE.","ORT CHRY","PRI OPHR","LAB BUCC","ACA SOLA","CAL LEUC","ENC CARY","GYM NIGR","MYR BREV","SAR BULL","TRA GOOD","TRA LATH","UMB CORO","EUC JONE","EUCLEFR","STY LATE","SYA MICR","SYN SCOV","APO PHEN","HIP REID","PHA XENU","AST PUNC","CHI ATIN","CHL CHRY","HIP EREC","OGC NASU","SER PHOE","SPH NEPH","MYR OCEL","PRI RUBI","RHI LENT","ALB VULP","DAC VOLI","RYP BIST","BRO BARB","HYP GUMM","OPS TAU_","EMM ATLA","UPE PARV","SYN SYNO")
        
        #abundance
        higher_reef_fk_abun = getDomainAbundance(RVCdata_FK, higher_reef_spp_list, merge_protected = F)
        write_csv(higher_reef_fk_abun, "trophic_groups/abundance/higher_reef_fk_abun_merged.csv")
        
        #density
        higher_reef_fk_den = getDomainDensity(RVCdata_FK, higher_reef_spp_list, merge_protected = F)
        write_csv(higher_reef_fk_den, "trophic_groups/density/higher_reef_fk_den_merged.csv")
        
        #biomass
        higher_reef_fk_bio = getDomainBiomass(RVCdata_FK, higher_reef_spp_list, RVCdata_FK$taxonomic_data)
        write_csv(higher_reef_fk_bio, "trophic_groups/biomass/higher_reef_fk_bio_merged.csv")
        
        #fk diversity
        higher_reef_fk_abundance = higher_reef_fk_abun %>% 
          select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
          group_by(YEAR, protected_status,abundance) %>% #48 groups 
          nest(-YEAR, -protected_status) %>%  
          mutate(
            data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
        
        higher_reef_fk_abundance$data <- NULL
        higher_reef_fk_abundance$data_wide <- NULL
        
        
        higher_reef_fk_diversity <- higher_reef_fk_abundance
        export (higher_reef_fk_diversity,"trophic_groups/diversity/higher_reef_fk_diversity.csv" )
   
        
```{r Hogfish}
        hogfish_fk_abun_csv     = "trophic_groups/abundance/hogfish_fk_abun.csv"
        hogfish_fk_den_csv      = "trophic_groups/density/hogfish_fk_den.csv"
        hogfish_fk_bio_csv      = "trophic_groups/biomass/hogfish_fk_bio_merged.csv"
        if(!all(file.exists(hogfish_fk_abun_csv,hogfish_fk_den_csv))){
          
          hogfish_spp_list = c("LAC MAXI", "BOD RUFU", "BOD PULC")
          
          #abundance
          hogfish_fk_abun = getDomainAbundance(RVCdata_FK, hogfish_spp_list, merge_protected = F)
          write_csv(hogfish_fk_abun, "trophic_groups/abundance/hogfish_fk_abun.csv")
          
          #density
          hogfish_fk_den = getDomainDensity(RVCdata_FK, hogfish_spp_list, merge_protected = F)
          write_csv(hogfish_fk_den, "trophic_groups/density/hogfish_fk_den.csv")
          
          #biomass
          hogfish_fk_bio = getDomainBiomass(RVCdata_FK, hogfish_spp_list, RVCdata_FK$taxonomic_data)
          write_csv(hogfish_fk_bio, "trophic_groups/biomass/hogfish_fk_bio_merged.csv")
          
          #FK diversity
          
          
          hogfish_fk_abundance = hogfish_fk_abun %>% 
            select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
            group_by(YEAR, protected_status,abundance) %>% #48 groups 
            nest(-YEAR, -protected_status) %>%  
            mutate(
              data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
          
          hogfish_fk_abundance$data <- NULL
          hogfish_fk_abundance$data_wide <- NULL
          
          
          hogfish_fk_diversity <- hogfish_fk_abundance
          export (hogfish_fk_diversity,"trophic_groups/diversity/hogfish_fk_diversity.csv" )
          
```{r Opportunists}
          opportunists_fk_abun_csv     = "trophic_groups/abundance/opportunists_fk_abun.csv"
          opportunists_fk_den_csv      = "trophic_groups/density/opportunists_fk_den.csv"
          opportunists_fk_bio_csv      = "trophic_groups/biomass/opportunists_fk_den_merged.csv"
          opportunists_fk_diversity_csv= "trophic_groups/diversity/opportunists_fk_diversity.csv"
          if(!all(file.exists(opportunists_fk_abun_csv,opportunists_fk_den_csv,opportunists_fk_bio_csv ,opportunists_fk_diversity_csv))){
            
            opportunists_spp_list = c("CAR RUBE", "SPH BARR", "ALE CILI","DEC PUNC", "DEC MACA", "CAR CRYS", "CAR BART", "SCO REGA","SPH PICU", "CAR LATU", "SEL VOME", "ELA BIPI", "CAR SPE.", "TRA FALC", "EUT ALLE", "SER RIVO", "SCO MACU", "SER DUME", "SCO CAVA", "SPH GUAC", "CAR LUGU", "OLI SAUR", "SER SPE.", "Rac cana", "Ser zona")
            
            #abundance
            opportunists_fk_abun = getDomainAbundance(RVCdata_FK, opportunists_spp_list, merge_protected = F)
            write_csv(opportunists_fk_abun, "trophic_groups/abundance/opportunists_fk_abun.csv")
            
            #density
            opportunists_fk_den = getDomainDensity(RVCdata_FK, opportunists_spp_list, merge_protected = F)
            write_csv(opportunists_fk_den, "trophic_groups/density/opportunists_fk_den.csv")
            
            #biomass
            opportunists_fk_bio = getDomainBiomass(RVCdata_FK, opportunists_spp_list, RVCdata_FK$taxonomic_data)
            write_csv(opportunists_fk_bio, "trophic_groups/biomass/opportunists_fk_bio_merged.csv")
            
            #diversity
            
            
            opportunists_fk_abundance = opportunists_fk_abun %>% 
              select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
              group_by(YEAR, protected_status,abundance) %>% #48 groups 
              nest(-YEAR, -protected_status) %>%  
              mutate(
                data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
            
            opportunists_fk_abundance$data <- NULL
            opportunists_fk_abundance$data_wide <- NULL
            
            
            opportunists_fk_diversity <- opportunists_fk_abundance
            export (opportunists_fk_diversity,"trophic_groups/diversity/opportunists_fk_diversity.csv" )
            
 ```{r Parrotfish}
            parrotfish_fk_abun_csv      = "trophic_groups/abundance/parrotfish_fk_abun.csv"
            parrotfish_fk_den_csv       = "trophic_groups/density/parrotfish_fk_den.csv"
            parrotfish_fk_bio_csv       = "trophic_groups/biomass/parrotfish_fk_bio_merged.csv"
            parrotfish_fk_diversity_csv = "trophic_groups/diversity/parrotfish_fk_diversity.csv"
            if(!all(file.exists(parrotfish_fk_abun_csv,parrotfish_fk_den_csv,parrotfish_fk_bio_csv, parrotfish_fk_diversity_csv))){
              
              parrotfish_spp_list = c('SCA ISER', "SCA COEL", "SPA AURO", "SPA VIRI", "SPA ATOM", "SCA TAEN", 'SPA RUBR', "SPA CHRY", "SCA VETU", "SCA COER", "SCA GUAC", "CRY ROSE", "SPA RADI", "SCA SPE.", "NIC USTA", "SPA SPE.")
              
              #abundance
              parrotfish_fk_abun = getDomainAbundance(RVCdata_FK, parrotfish_spp_list, merge_protected = F)
              write_csv(parrotfish_fk_abun, "trophic_groups/abundance/parrotfish_fk_abun.csv")
              
              #density
              parrotfish_fk_den = getDomainDensity(RVCdata_FK, parrotfish_spp_list, merge_protected = F)
              write_csv(parrotfish_fk_den, "trophic_groups/density/parrotfish_fk_den.csv")
              
              #biomass
              parrotfish_fk_bio = getDomainBiomass(RVCdata_FK, parrotfish_spp_list, RVCdata_FK$taxonomic_data)
              write_csv(parrotfish_fk_bio, "trophic_groups/biomass/parrotfish_fk_bio_merged.csv")
              
              
              
              parrotfish_fk_abundance = parrotfish_fk_abun %>% 
                select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
                group_by(YEAR, protected_status,abundance) %>% #48 groups 
                nest(-YEAR, -protected_status) %>%  
                mutate(
                  data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
              
              parrotfish_fk_abundance$data <- NULL
              parrotfish_fk_abundance$data_wide <- NULL
              
              
              parrotfish_fk_diversity <- parrotfish_fk_abundance
              export (parrotfish_fk_diversity,"trophic_groups/diversity/parrotfish_fk_diversity.csv" )
              
```{r Sea bass and Hamlets}
              seabass_fk_abun_csv     = "trophic_groups/abundance/seabass_fk_abun.csv"
              seabass_fk_den_csv      = "trophic_groups/density/seabass_fk_den.csv"
              seabass_fk_bio_csv      = "trophic_groups/biomass/seabass_fk_bio_merged.csv"
              seabass_fk_diversity_csv= "trophic_groups/diversity/seabass_fk_diversity.csv"
              if(!all(file.exists(seabass_fk_abun_csv,seabass_fk_den_csv,seabass_fk_bio_csv, seabass_fk_diversity_csv))){
                
                sea_bass_hamlet_spp_list = c("SER TIGR","HYP GEMM","HYP UNIC","SER TABA","SER BALD","HYP PUEL","EPI ADSC","SER TORT","EPI GUTT","HYP NIGR","DIP FORM","HYP SPE.","SCH BETA","HYP TANN", "RYP SAPO","PAR FURC","HYP INDI","HYP GUTT","ALP AFER","LIO EUKR","SER ANNU","LIO RUBE","HYP HYBR","HYP CHLO","PRI AQUI","RYP MACU","SER SUBL","CEN OCYU","CEN STRI","Epi drum","Lio mowb")
                
                #abundance
                seabass_fk_abun = getDomainAbundance(RVCdata_FK, sea_bass_hamlet_spp_list, merge_protected = F)
                write_csv(seabass_fk_abun, "trophic_groups/abundance/seabass_fk_abun.csv")
                
                #density
                seabass_fk_den = getDomainDensity(RVCdata_FK, sea_bass_hamlet_spp_list, merge_protected = F)
                write_csv(seabass_fk_den, "trophic_groups/density/seabass_fk_den.csv")
                
                #biomass
                seabass_fk_bio = getDomainBiomass(RVCdata_FK, sea_bass_hamlet_spp_list,RVCdata_FK$taxonomic_data)
                write_csv(seabass_fk_bio, "trophic_groups/biomass/seabass_fk_bio_merged.csv")
                
                #diversity
                seabass_fk_abundance = seabass_fk_abun %>% 
                  select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
                  group_by(YEAR, protected_status,abundance) %>% #48 groups 
                  nest(-YEAR, -protected_status) %>%  
                  mutate(
                    data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
                
                seabass_fk_abundance$data <- NULL
                seabass_fk_abundance$data_wide <- NULL
                
                
                seabass_fk_diversity <- seabass_fk_abundance
                export (seabass_fk_diversity,"trophic_groups/diversity/seabass_fk_diversity.csv" )
                
                
```{r Small Reef Fish}
                small_reef_fk_abun_csv      = "trophic_groups/abundance/small_reef_fk_abun.csv"
                small_reef_fk_den_csv       = "trophic_groups/density/small_reef_fk_den.csv"
                small_reef_fk_bio_csv       = "trophic_groups/biomass/small_reef_fk_bio_merged.csv"
                small_reef_fk_diversity_csv = "trophic_groups/diversity/small_reef_fk_diversity.csv"
                if(!all(file.exists(small_reef_fk_abun_csv,small_reef_fk_den_csv,small_reef_fk_bio_csv, small_reef_fk_diversity_csv))){ 
                  
                  small_reef_fish_spp_list = c("COR PERS","ACA COER","KYP SECT","ACA BAHI","ACA CHIR","COR GLAU","ELA OCEA","GNA THOM","PTE CALL","ACA SPE.","MAL TRIA","COR DICR","PAR MARM","MAL MACR","OPH MACC","CTE SAEP","MIC CARR","PTE HELE","HEM SIMU","SCA CRIS","COR EIDO","GOB SPE.","TYL CROC","MIC MICR","ACA ASPE","COR SPE.","BLE SPE.","STR NOTA","MEL NIGE","HYP BERM","EMB PAND","ELA EVEL","ACA CHAP","EMB BAHA","COR LIPE","NES LONG","ENN BOEH","ACA MARI","LAB NUCH","MAL VERS","MAL GILL","ELA MACR","PRI HIPO","GOB DILE","ELA SAUC","ELA XANT","STR TIMU","MAL AURO","PAR MARN","CHA LIMB","OXY STIG","ELA HORS","PAR NIGR","COR PUNC","ACA SPIN","BOL BOQU","ElA RAND","LAB KALI","LAB NIGR","ENN ALTI")
                  
                  #abundance
                  small_reef_fk_abun = getDomainAbundance(RVCdata_FK, small_reef_fish_spp_list, merge_protected = F)
                  write_csv(small_reef_fk_abun, "trophic_groups/abundance/small_reef_fk_abun.csv")
                  
                  #density
                  small_reef_fk_den = getDomainDensity(RVCdata_FK, small_reef_fish_spp_list, merge_protected = F)
                  write_csv(small_reef_fk_den, "trophic_groups/density/small_reef_fk_den.csv")
                  
                  #biomass
                  small_reef_fk_bio = getDomainBiomass(RVCdata_FK, small_reef_fish_spp_list, RVCdata_FK$taxonomic_data)
                  write_csv(small_reef_fk_bio, "trophic_groups/biomass/small_reef_fk_bio_merged.csv")
                  
                  #fk diversity
                  
                  small_reef_fk_abundance = small_reef_fk_abun %>% 
                    select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
                    group_by(YEAR, protected_status,abundance) %>% #48 groups 
                    nest(-YEAR, -protected_status) %>%  
                    mutate(
                      data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
                  
                  small_reef_fk_abundance$data <- NULL
                  small_reef_fk_abundance$data_wide <- NULL
                  
                  
                  small_reef_fk_diversity <- small_reef_fk_abundance
                  export (small_reef_fk_diversity,"trophic_groups/diversity/small_reef_fk_diversity.csv" )
                  
                
```{r Snappers}
                  snapper_fk_abun_csv      = "trophic_groups/abundance/snapper_fk_abun.csv"
                  snapper_fk_den_csv       = "trophic_groups/density/snapper_fk_den.csv"
                  snapper_fk_bio_csv       = "trophic_groups/biomass/snapper_fk_bio_merged.csv"
                  snapper_fk_diversity_csv = "trophic_groups/diversity/snapper_fk_diversity.csv"
                  if(!all(file.exists(snapper_fk_abun_csv,snapper_fk_den_csv,snapper_fk_bio_csv,snapper_fk_diversity_csv))){
                    
                    snapper_spp_list = c("OCY CHRY", "LUT GRIS", "LUT ANAL", "LUT APOD", "LUT SYNA", "LUT MAHO", "LUT JOCU", "LUT BUCC", 'LUT SPE.', "LUT CYAN", "RHO AURO", "Lut camp")
                    
                    #abundance
                    snapper_fk_abun = getDomainAbundance(RVCdata_FK, snapper_spp_list, merge_protected = F)
                    write_csv(snapper_fk_abun, "trophic_groups/abundance/snapper_fk_abun.csv")
                    
                    #density
                    snapper_fk_den = getDomainDensity(RVCdata_FK, snapper_spp_list, merge_protected = F)
                    write_csv(snapper_fk_den, "trophic_groups/density/snapper_fk_den.csv")
                    
                    #biomass
                    snapper_fk_bio = getDomainBiomass(RVCdata_FK, snapper_spp_list, RVCdata_FK$taxonomic_data)
                    write_csv(snapper_fk_bio, "trophic_groups/biomass/snapper_fk_bio_merged.csv")
                    
                    #diversity
                    snapper_fk_abundance = snapper_fk_abun %>% 
                      select(YEAR, protected_status, SPECIES_CD, abundance) %>%  
                      group_by(YEAR, protected_status,abundance) %>% #48 groups 
                      nest(-YEAR, -protected_status) %>%  
                      mutate(
                        data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill = 0)), 
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
                    
                    snapper_fk_abundance$data <- NULL
                    snapper_fk_abundance$data_wide <- NULL
                    
                    
                    snapper_fk_diversity <- snapper_fk_abundance
                    export (snapper_fk_diversity,"trophic_groups/diversity/snapper_fk_diversity.csv" )
                    

Dygraphs        



path = "trophic_groups/density/"
files = list.files(path=path, pattern = "*.csv")
for(file in files){
  perpos <- which(strsplit(file, "")[[1]]==".")
  assign(
    gsub(" ","",substr(file, 1, perpos-1)), 
    read.csv(paste(path, file, sep= "")))  

#summarize density and spread so it is in data wide format 
for (i in 1:length(files)){
  select(YEAR, protected_status, SPECIES_CD, density) %>% 
    group_by(YEAR, protected_status) %>%
    summarise(
      ntot = sum(density)) %>%
    filter(protected_status != "0") %>%
    filter(protected_status != "1") %>% 
    mutate(
      protected_status = recode(
        protected_status, '0'='unprotected', '1'='protected')) %>%
    spread(protected_status, ntot)

  dygraph(higher_reef_fk_density, main = 'Higher Level Reef Fish Density') %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2)
  
  
  
  
  
  Higher_reef_fk_den = read_csv ("trophic_groups/density/higher_reef_fk_den_merged.csv")
  
  higher_reef_fk_density = Higher_reef_fk_den %>%
    select(YEAR, protected_status, SPECIES_CD, density) %>% 
    group_by(YEAR, protected_status) %>%
    summarise(
      ntot = sum(density)) %>%
    filter(protected_status != "0") %>%
    filter(protected_status != "1") %>% 
    mutate(
      protected_status = recode(
        protected_status, '0'='unprotected', '1'='protected')) %>%
    spread(protected_status, ntot)
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
grouper = read_csv("trophic_groups/diversity/grouper_fk_diversity.csv")
grouper_abun = read_csv("trophic_groups/abundance/grouper_fk_abun.csv")
grouper_abundance = grouper_abun %>%
  select(YEAR,protected_status, SPECIES_CD,abundance) %>% 
  group_by(YEAR, protected_status) %>%
  summarise(
    ntot = sum(abundance)) %>%
  filter(protected_status != "all") %>%
  mutate(
    protected_status = recode(
      protected_status, '0'='unprotected', '1'='protected')) %>%
  spread(protected_status, ntot)
dygraph(grouper_abundance, main = 'Grouper Abundance') %>% 
  dyAxis("y", label = "Abundance") %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = T)

plot_timeseries(
  title   = 'Grouper Richness',
  y_label = 'Richness',
  x_label = 'Year',
  csv_tv  = csv,
  col_t   = 'YEAR',
  filter  = 'protected_status == "all"',
  col_y   = 'grouper_richness',
  skip    = 0)
grouper = grouper %>%
  filter(protected_status != 'all') %>%
  select(YEAR, protected_status, shannon) %>%
  mutate(
    protected_status = recode(
      protected_status, '0'='unprotected', '1'='protected')) %>%
  spread(protected_status, shannon)
dygraph(grouper, main = 'Grouper Shannon Diversity') %>% 
  dyAxis("y", label = "Effective Number of Species") %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = T)%>% 
  dyRangeSelector(height = 20) 



#### Trophic Level 


trophic_level_bio_csv = "trophic_level/trophic_level_bio.csv"


trophic_levels2 <- read_csv('trophic_level/RVC_trophic_level.csv')

trophic_level = trophic_levels2 %>%
  select(RVC_CODE, Trophic_Level) %>%  #391 species 
  mutate(
    TL = # 3 trophic levels 
      ifelse(Trophic_Level == 2, "TL2",
             ifelse(Trophic_Level == 3, "TL3",
                    ifelse(Trophic_Level == 4, "TL4", NA))),
    SPECIES_CD = RVC_CODE) %>% 
  arrange(SPECIES_CD) %>% 
  select(SPECIES_CD, TL) 
#Get Biomass for the 391 species 
trophic_level_bio = getDomainBiomass(RVCdata_FK, trophic_level$SPECIES_CD, RVCdata_FK$taxonomic_data)
write_csv(trophic_level_bio, "trophic_level/trophic_level_bio.csv")
 

trophic_level_bio = read_csv("trophic_level/trophic_level_bio.csv")
# Parsed with column specification:
# cols(
#   YEAR = col_integer(),
#   REGION = col_character(),
#   SPECIES_CD = col_character(),
#   biomass = col_double(),
#   var = col_double(),
#   n = col_integer(),
#   nm = col_integer(),
#   N = col_integer(),
#   NM = col_double()
# )
trophic_level_bio = trophic_level_bio %>%
  select(YEAR, biomass, SPECIES_CD) %>% 
  left_join(trophic_level, trophic_level_bio, by = 'SPECIES_CD')
write_csv(trophic_level_bio, "trophic_level/tlbio.csv")
                  
                  trophic_level_bio = read_csv("trophic_level/tlbio.csv")
                  # Parsed with column specification:
                  # cols(
                  #   YEAR = col_integer(),
                  #   biomass = col_double(),
                  #   SPECIES_CD = col_character(),
                  #   TL = col_character()
                  trophic_level_biomass = trophic_level_bio %>% 
                    group_by(YEAR, TL) %>%
                    summarise(
                      ntot = sum(biomass)) %>% 
                    spread(TL, ntot)



#### Exploited Reef Fish
                  
exploited_fk_abun_csv = "exploited_species/exploited_fk_abun.csv"
exploited_fk_den_csv  = "exploited_species/exploited_fk_den.csv"
exploited_fk_bio_csv  = "exploited_species/exploited_fk_bio.csv"
                  
exploited_spp_list= c(
  "CEP CRUE", #Graysby
  "EPI ITAJ", #Goliath Grouper 
  "EPI MORI", #Red Grouper
  "EPI STRI", #Nassau Grouper 
  "LAC MAXI", #Hogfish
  "LUT ANAL", #Mutton Snapper
  "LUT GRIS", #Grey Snapper    
  "MYC BONA", #Black Grouper
  "OCY CHRY" #Yellowtail Snapper 
  
  
  #abundance
  exploited_fk_abun <- getDomainAbundance(RVCdata_FK, species = exploited_spp_list, merge_protected = F)
  write_csv(exploited_fk_abun,"exploited_species/exploited_fk_abun.csv")
  
  #density 
  exploited_fk_den <- getDomainDensity(RVCdata_FK, species = exploited_spp_list, merge_protected = F)
  write_csv(exploited_fk_den,"exploited_species/exploited_fk_den.csv")
  
  #biomass 
  exploited_fk_bio <- getDomainBiomass(RVCdata_FK, species = exploited_spp_list, growth_parameters = RVCdata_FK$taxonomic_data, merge_protected = F)
  write_csv(exploited_fk_bio,"exploited_species/exploited_fk_bio.csv")

  
  exploited_den = read_csv("exploited_species/exploited_fk_den.csv")
  exploited_density = exploited_den %>%
    mutate(
      protected_status = recode(
        protected_status, '0'='unprotected', '1'='protected'), 
      common_name = recode(
        SPECIES_CD,
        'CEP CRUE' = 'Graysby',
        'EPI ITAJ' = 'Goliath_Grouper',
        'EPI MORI' = 'Red_Grouper',
        'EPI STRI' = 'Nassau_Grouper',
        'LAC MAXI' = 'Hogfish',
        'LUT ANAL' = 'Mutton_Snapper',
        'LUT GRIS' = 'Grey_Snapper',
        'MYC BONA' = 'Black_Grouper',
        'OCY CHRY' = 'Yellowtail_Snapper')) %>% 
    select(YEAR, common_name, protected_status, density) %>%
    group_by(YEAR, common_name, protected_status) %>%
    filter(protected_status != "all") %>%
    summarise(
      ntot = sum(density)) %>%
    spread(common_name, ntot)
  #Graysby density    
  Black_Grouper = exploited_density %>%
    select(YEAR, protected_status, Black_Grouper) %>%
    spread(protected_status, Black_Grouper)
  dygraph(Black_Grouper, main = 'Black Grouper Density') %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T)
  ggplot(Black_Grouper, aes(x = YEAR)) +
    geom_point(aes(y = protected, color = "protected")) +
    geom_point(aes(y = unprotected, color = "unprotected")) +
    geom_line(aes(y = protected, color = "protected")) +
    geom_line(aes(y = unprotected, color = "unprotected"))+
    ggtitle("Black Grouper Density") +
    theme(plot.title = element_text(hjust = 0.5, face = 'bold', size = 12))+
    labs(x = "Year", y = "Density", color = "Level of Protection") +
    scale_x_continuous(breaks = c(1999:2016))
  #Graysby density    
  Graysby = exploited_density %>%
    select(YEAR, protected_status, Graysby) %>%
    spread(protected_status, Graysby)
  dygraph(Graysby, main = 'Graysby Density') %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T)
  #Grey_Snapper density    
  Grey_Snapper = exploited_density %>%
    select(YEAR, protected_status, Grey_Snapper) %>%
    spread(protected_status, Grey_Snapper)
  dygraph(Grey_Snapper, main = 'Grey Snapper Density') %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2)
  #Goliath grouper density 
  Goliath_Grouper = exploited_density %>%
    select(YEAR, protected_status, Goliath_Grouper) %>%
    spread(protected_status, Goliath_Grouper)
  dygraph(Goliath_Grouper, main = 'Goliath Grouper Density') %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2)
  #Hogfish density    
  Hogfish = exploited_density %>%
    select(YEAR, protected_status, Hogfish) %>%
    spread(protected_status, Hogfish)
  dygraph(Hogfish, main = 'Hogfish Density') %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2)
  ##Nassau Grouper
  Nassau_Grouper = exploited_density %>%
    select(YEAR, protected_status, Nassau_Grouper) %>%
    spread(protected_status, Nassau_Grouper)
  dygraph(Nassau_Grouper, main = 'Nassau Grouper Density') %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = )
  ##Yellowtail Snapper 
  yellowtail_snapper = exploited_density %>%
    select(YEAR, protected_status, Yellowtail_Snapper) %>%
    spread(protected_status, Yellowtail_Snapper)
  dygraph(yellowtail_snapper, main = 'Yellowtail Snapper Density') %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2)
  #exploited reef fish density in protected areas 
  exploited_density_protected = exploited_density %>%
    filter(protected_status == 'protected') %>% 
    select(YEAR, Black_Grouper, Goliath_Grouper, Graysby, Grey_Snapper, Hogfish, Mutton_Snapper, Nassau_Grouper,Red_Grouper, Yellowtail_Snapper)
  dygraph(exploited_density_protected, main = "Exploited Reef Fish Density in Protected Areas") %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2, colors = rainbow(9))
  exploited_density_unprotected = exploited_density %>%
    filter(protected_status == 'unprotected') %>% 
    select(YEAR, Black_Grouper, Goliath_Grouper, Graysby, Grey_Snapper, Hogfish, Mutton_Snapper, Nassau_Grouper,Red_Grouper, Yellowtail_Snapper)
  dygraph(exploited_density_unprotected, main = "Exploited Reef Fish Density in Protected Areas") %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2, colors = grDevices::rainbow(9, start = 0, end = 1, alpha = 0.6))
  ##Exploited Biomass 
  exploited_bio = read_csv("exploited_species/exploited_fk_bio.csv")
  # Parsed with column specification:
  # cols(
  #   YEAR = col_integer(),
  #   REGION = col_character(),
  #   SPECIES_CD = col_character(),
  #   biomass = col_double(),
  #   var = col_double(),
  #   n = col_integer(),
  #   nm = col_integer(),
  #   N = col_integer(),
  #   NM = col_double(),
  #   protected_status = col_character()
  # )
  exploited_biomass = exploited_bio %>%
    mutate(
      protected_status = recode(
        protected_status, '0'='unprotected', '1'='protected'), 
      common_name = recode(
        SPECIES_CD,
        'CEP CRUE' = 'Graysby',
        'EPI ITAJ' = 'Goliath_Grouper',
        'EPI MORI' = 'Red_Grouper',
        'EPI STRI' = 'Nassau_Grouper',
        'LAC MAXI' = 'Hogfish',
        'LUT ANAL' = 'Mutton_Snapper',
        'LUT GRIS' = 'Grey_Snapper',
        'MYC BONA' = 'Black_Grouper',
        'OCY CHRY' = 'Yellowtail_Snapper')) %>% 
    select(YEAR, common_name, protected_status, biomass) %>%
    group_by(YEAR, common_name, protected_status) %>%
    filter(protected_status != "all") %>%
    summarise(
      ntot = sum(biomass)) %>%
    spread(common_name, ntot)
  exploited_biomass_all = exploited_bio %>% #432*10
    filter(protected_status == 'all') %>%   #144*10 
    select(YEAR, SPECIES_CD, biomass) %>%   #144*3
    mutate(
      common_name = recode(
        SPECIES_CD,
        'CEP CRUE' = 'Graysby',
        'EPI ITAJ' = 'Goliath Grouper',
        'EPI MORI' = 'Red Grouper',
        'EPI STRI' = 'Nassau Grouper',
        'LAC MAXI' = 'Hogfish',
        'LUT ANAL' = 'Mutton Snapper',
        'LUT GRIS' = 'Grey Snapper',
        'MYC BONA' = 'Black Grouper',
        'OCY CHRY' = 'Yellowtail Snapper')) %>% 
    select(YEAR, common_name, biomass) %>%
    spread(common_name, biomass)
  dygraph(exploited_biomass_all, main = "Exploited Reef Fish Biomass in Protected Areas") %>% 
    dyAxis("y", label = "Density") %>%
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2) #colors = grDevices::rainbow(9, alpha = 0.6)
  

##### Reef Fish Biodiversity 
             
  
  
  ## FK abundance by domain           
  
  
  ###fetch data from getDomainAbundance command for each year in the FK (example below)
  #fk1999<- getRvcData(1999, "FLA KEYS")
  #abunfk1999 <- getDomainAbundance(fk1999, spp_list, merge_protected = F)
  #write_csv(abunfk1999, 'abunfk1999.csv') #1999
  
  ### This is how to combine all the years 
  
  cat("bind all csv's\n") #concatenate and print - character string naming the file to print to
  d_fk = data_frame()
  for (f in list.files('big_csv/abundance_domain/FK', pattern="\\.csv", full.names=T)){
    cat(' ', f,'\n')
    d_f = read_csv(
      f, #path to a file 
      progress=F, #progress: Display a progress bar
      trim_ws=T, #trim_ws: leading and trailing whitespace are trimmed 
      col_types = cols(
        protected_status = col_character()))  #column specification - must contain one column specification for each column
    d_fk = bind_rows(d_fk, d_f)
  } 
  write_csv(d_fk, 'big_csv/abundance_domain/domain_fk_abun.csv') 
  
  
  
# FK's domain abundance including specis to genus level (spp.)  - 377 species 
  domain_fk_abun = read_csv("abundance_domain/domain_fk_abun.csv")
  
  
   domain_fk_abun_diversity = domain_fk_abun %>% 
     select(YEAR, protected_status, SPECIES_CD, abundance) %>% # 
     group_by(YEAR, protected_status, abundance) %>% ##
     nest(-YEAR, -protected_status) %>%  
     mutate(
       data_wide = map(data, ~ spread(data=.x, SPECIES_CD, abundance, fill =0)), 
       dom_richness = map( #species richness 
         data_wide, #why are there 116 rows??? 
         function(x) specnumber(x)),
       dom_simpson = map( #simpson diversity as effective number of species 
         data_wide,
         function(x) 1/(1 - diversity(x, index = 'simpson'))),
       dom_shannon = map( #shannon diversity as effective number of species 
         data_wide,
         function(x) exp(diversity(x, index = 'shannon')))) %>%
     unnest(dom_richness, dom_simpson, dom_shannon)
   
   domain_fk_abun_diversity$data <- NULL
   domain_fk_abun_diversity$data_wide <- NULL
   
  export(domain_fk_abun_diversity, 'abundance_domain/domain_fk_abun_diversity.csv')
 
  
  
   
  domain_fk_abun_diversity = read_csv('abundance_domain/domain_fk_abun_diversity.csv')
  
  fk_simpson = domain_fk_abun_diversity %>% 
    filter(protected_status != 'all') %>%
    select(YEAR, protected_status, dom_simpson) %>%
    mutate(
      protected_status = recode(
        protected_status, '0'='Unprotected', '1'='Protected')) %>%
    spread(protected_status, dom_simpson)
  dygraph(fk_simpson, main = "Simpson Reef Fish Diversity") %>% 
    dyAxis("y", label = "Effective Number of Species", valueRange = c(0, 50)) %>%
    dyAxis("x", label = "Year") %>%
    dySeries("Protected", strokeWidth = 2, strokePattern = "dashed") %>% 
    dySeries("Unprotected", strokeWidth = 2) %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.8, axisLineWidth = 2)
  #dyRangeSelector(height = 20) 
  ## Shannon for protected and unprotected stacked 
  fk_shannon = domain_fk_abun_diversity %>% 
    filter(protected_status != 'all') %>%
    select(YEAR, protected_status, dom_shannon) %>%
    mutate(
      protected_status = recode(
        protected_status, '0'='Unprotected', '1'='Protected')) %>%
    spread(protected_status, dom_shannon)
  dygraph(fk_shannon, main = "Shannon Reef Fish Diversity") %>% 
    dyAxis("y", label = "Effective Number of Species", valueRange = c(0, 75)) %>%
    dyAxis("x", label = "Year") %>%
    dySeries("Protected", strokeWidth = 2, strokePattern = "dashed") %>% 
    dySeries("Unprotected", strokeWidth = 2) %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.8, axisLineWidth = 2)
  #dyRangeSelector(height = 20) 
  d = domain_fk_abun_diversity %>% 
    filter(protected_status != 0) %>% 
    filter(protected_status != 1)
  #Simpson for "all" filled 
  dygraph_simp = d %>%
    select(YEAR, dom_simpson)
  dygraph(dygraph_simp, main = "Simpson Diversity of Reef Fish in FKNMS") %>%
    dyOptions(fillGraph = T, fillAlpha = 0.4, drawPoints = T, pointSize = 2) %>%
    dySeries("dom_simpson", label = "Simpson Diversity", color = "red") %>% 
    dyAxis("y", label = "Effective Number of Species") %>% 
    dyAxis("x", label = "Year") %>%
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2)
  #Shannon for "all" filled 
  dygraph_shannon = d %>%
    select(YEAR, dom_shannon)
  dygraph(dygraph_shannon, main = "Shannon Diversity of Reef Fish in FKNMS") %>%
    dyOptions(fillGraph = T, fillAlpha = 0.4, drawPoints = T, pointSize = 2) %>%
    dySeries("dom_shannon", label = "Shannon Diversity", color = "blue") %>% 
    dyAxis("y", label = "Effective Number of Species") %>% 
    dyAxis("x", label = "Year") %>% 
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2)
  #Richness for "all" filled 
  dygraph_richness = d %>%
    select(YEAR, dom_richness)
  dygraph(dygraph_richness, main = "Species Richness of Reef Fish in FKNMS") %>%
    dyOptions(fillGraph = T, fillAlpha = 0.4, drawPoints = T, pointSize = 2) %>%
    dySeries("dom_richness", label = "Species Richness", color = "purple") %>% 
    dyAxis("y", label = "Number of Species") %>% 
    dyAxis("x", label = "Year") %>% 
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2)
  ## Simpson and Shannon stacked for "all"
  dygraph_simp_shannon = d %>%
    select(YEAR, dom_simpson, dom_shannon)
  dygraph(dygraph_simp_shannon, main = "Florida Keys Reef Fish Biodiversity") %>% 
    dyAxis("y", label = "Effective Number of Species", valueRange = c(0, 70)) %>%
    dyAxis("x", label = "Year") %>%
    dySeries("dom_shannon", label = "Shannon Diversity", color = "blue") %>% 
    dySeries("dom_simpson", label = "Simpson Diversity", color = "red") %>% 
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 1.5) %>% #drawGrid = F
    dyLegend(width = 400)
  #Richness, Shannon, Simpson stacked for "all"
  dygraph_rich_simp_shannon = d %>%
    select(YEAR, dom_simpson, dom_shannon, dom_richness)
  dygraph(dygraph_rich_simp_shannon, main = "Florida Keys Reef Fish Biodiversity") %>% 
    dyAxis("y", label = "Effective Number of Species") %>% 
    dyAxis("x", label = "Year") %>%
    dySeries("dom_richness", label = "Richness", color = "purple") %>%
    dySeries("dom_shannon", label = "Shannon",  color = "blue") %>% 
    dySeries("dom_simpson", label = "Simpson", color = "red") %>% 
    dyOptions(stackedGraph = T, fillAlpha = 0.6, axisLineWidth = 2) %>% #drawGrid = F
    dyLegend(width = 400)
  
  
  
  
  
              